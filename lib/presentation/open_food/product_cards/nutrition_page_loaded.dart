import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:openfoodfacts/model/OrderedNutrient.dart';
import 'package:openfoodfacts/model/OrderedNutrients.dart';
import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:openfoodfacts/utils/UnitHelper.dart';

import 'package:private_fit/domain/open_food/product_query.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/open_food/product_cards/design_constants.dart';
import 'package:private_fit/presentation/open_food/product_cards/nutrition_container.dart';
import 'package:private_fit/presentation/open_food/product_cards/open_food_card.dart';
import 'package:private_fit/presentation/open_food/product_cards/text_input_formatters_helper.dart';

/// Actual nutrition page, with data already loaded.
class NutritionPageLoaded extends StatefulWidget {
  const NutritionPageLoaded(
    this.product,
    this.orderedNutrients, {
    super.key,
  });

  final Product product;
  final OrderedNutrients orderedNutrients;

  @override
  State<NutritionPageLoaded> createState() => _NutritionPageLoadedState();
}

class _NutritionPageLoadedState extends State<NutritionPageLoaded> {
  // we admit both decimal points
  // anyway, the keyboard will only show one
  //todo (kzawadi): the regex was (r'[0-9,.]')

  static final RegExp _decimalRegExp = RegExp('[0-9,.]');

  late final NumberFormat _numberFormat;
  late final NutritionContainer _nutritionContainer;

  bool _unspecified = false;
  // If true then serving, if false then 100g.
  bool _servingOr100g = false;

  double getColumnSizeFromContext(
    BuildContext context,
    double adjustmentFactor,
  ) {
    final columnSize = MediaQuery.of(context).size.width;
    return columnSize * adjustmentFactor;
  }

  final Map<String, TextEditingController> _controllers =
      <String, TextEditingController>{};
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late Product _product;

  @override
  void initState() {
    super.initState();
    _product = widget.product;

    _nutritionContainer = NutritionContainer(
      orderedNutrients: widget.orderedNutrients,
      product: _product,
    );
    _numberFormat = NumberFormat('####0.#####', ProductQuery.getLocaleString());
  }

  @override
  void dispose() {
    for (final controller in _controllers.values) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localizations = context.l10n;
    // final LocalDatabase localDatabase = context.read<LocalDatabase>();
    final children = <Widget>[_switchNoNutrition(localizations)];
    if (!_unspecified) {
      children
        ..add(_getServingField(localizations))
        ..add(_getServingSwitch(localizations));
      for (final orderedNutrient
          in _nutritionContainer.getDisplayableNutrients()) {
        children.add(
          _getNutrientRow(localizations, orderedNutrient),
        );
      }
      children.add(_addNutrientButton(localizations));
    }

    return WillPopScope(
      //return a boolean to decide whether to return to previous page or not
      onWillPop: () async {
        return Future<bool>.delayed(const Duration(milliseconds: 100))
            .then((_) => true);
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const AutoSizeText(
            'NUTRITION',
            maxLines: 2,
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.cyan,
          // actions: <Widget>[
          //   IconButton(
          //     onPressed: () {
          //       // _validateAndSave(localizations, localDatabase);
          //     },
          //     icon: const Icon(Icons.check),
          //   )
          // ],
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: LARGE_SPACE,
            vertical: SMALL_SPACE,
          ),
          child: Form(
            key: _formKey,
            child: ListView(children: children),
          ),
        ),
      ),
    );
  }

  Widget _getNutrientRow(
    final AppLocalizations appLocalizations,
    final OrderedNutrient orderedNutrient,
  ) =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            width: getColumnSizeFromContext(context, 0.6),
            child: _getNutrientCell(
              appLocalizations,
              orderedNutrient,
              _servingOr100g,
            ),
          ),
          SizedBox(
            width: getColumnSizeFromContext(context, 0.3),
            child: _getUnitCell(orderedNutrient),
          ),
        ],
      );

  Widget _getNutrientCell(
    final AppLocalizations appLocalizations,
    final OrderedNutrient orderedNutrient,
    final bool perServing,
  ) {
    final valueKey = NutritionContainer.getValueKey(
      orderedNutrient.id,
      perServing,
    );
    final TextEditingController controller;
    if (_controllers[valueKey] != null) {
      controller = _controllers[valueKey]!;
    } else {
      final value = _nutritionContainer.getValue(valueKey);
      controller = TextEditingController()
        ..text = value == null ? '' : _numberFormat.format(value);
      _controllers[valueKey] = controller;
    }
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(),
        labelText: orderedNutrient.name,
      ),
      keyboardType: const TextInputType.numberWithOptions(
        decimal: true,
      ),
      textInputAction: TextInputAction.next,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.allow(_decimalRegExp),
        DecimalSeparatorRewriter(_numberFormat),
      ],
      validator: (String? value) {
        if (value == null || value.trim().isEmpty) {
          return null;
        }
        try {
          _numberFormat.parse(value);
          return null;
        } catch (e) {
          return 'nutrition_page_invalid_number';
        }
      },
    );
  }

  static const Map<Unit, String> _unitLabels = <Unit, String>{
    Unit.G: 'g',
    Unit.MILLI_G: 'mg',
    Unit.MICRO_G: 'mcg/µg',
    Unit.KJ: 'kJ',
    Unit.KCAL: 'kcal',
    Unit.PERCENT: '%',
  };

  static String _getUnitLabel(final Unit unit) =>
      _unitLabels[unit] ?? UnitHelper.unitToString(unit)!;

  Widget _getUnitCell(final OrderedNutrient orderedNutrient) {
    final unit = _nutritionContainer.getUnit(orderedNutrient.id);
    return ElevatedButton(
      onPressed: NutritionContainer.isEditableWeight(orderedNutrient)
          ? () => setState(
                () => _nutritionContainer.setNextWeightUnit(orderedNutrient),
              )
          : null,
      child: Text(
        _getUnitLabel(unit),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _getServingField(final AppLocalizations appLocalizations) {
    final controller = TextEditingController()
      ..text = _nutritionContainer.servingSize ?? '';
    _controllers[NutritionContainer.fakeNutrientIdServingSize] = controller;
    return Padding(
      padding: const EdgeInsets.only(bottom: VERY_LARGE_SPACE),
      child: TextFormField(
        controller: controller,
        decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(),
          labelText: 'nutrition_page_serving_size',
        ),
        textInputAction: TextInputAction.next,
        validator: (String? value) => null, // free text
      ),
    );
  }

  Widget _getServingSwitch(final AppLocalizations appLocalizations) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('nutrition_page_per_100g'),
          Switch(
            value: _servingOr100g,
            onChanged: (final bool value) =>
                setState(() => _servingOr100g = !_servingOr100g),
          ),
          const Text('nutrition_page_per_serving')
        ],
      );

  Widget _switchNoNutrition(final AppLocalizations localizations) => SmoothCard(
        color: Theme.of(context).colorScheme.primary,
        padding: const EdgeInsets.symmetric(
          horizontal: MEDIUM_SPACE,
          vertical: SMALL_SPACE,
        ),
        margin: EdgeInsets.zero,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Switch(
              value: _unspecified,
              onChanged: (final bool value) =>
                  setState(() => _unspecified = !_unspecified),
              trackColor: MaterialStateProperty.all(
                Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            SizedBox(
              width: getColumnSizeFromContext(context, 0.6),
              child: AutoSizeText(
                'nutrition_page_unspecified',
                style: Theme.of(context).primaryTextTheme.bodyText2?.copyWith(
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      );

  Widget _addNutrientButton(final AppLocalizations appLocalizations) =>
      ElevatedButton.icon(
        onPressed: () async {
          final selected = await showDialog<OrderedNutrient>(
            context: context,
            builder: (BuildContext context) {
              return StatefulBuilder(
                builder: (
                  BuildContext context,
                  void Function(VoidCallback fn) setState,
                ) {
                  return const Text('OpenFoodAlertDialog');
                  // SmoothAlertDialog(
                  //   close: true,
                  //   title: appLocalizations.nutrition_page_add_nutrient,
                  //   body: Column(
                  //     children: <Widget>[
                  //       TextField(
                  //         decoration: InputDecoration(
                  //           prefixIcon: const Icon(Icons.search),
                  //           enabledBorder: const UnderlineInputBorder(),
                  //           labelText: appLocalizations.search,
                  //         ),
                  //         onChanged: (String query) {
                  //           setState(
                  //             () {
                  //               filteredList = leftovers
                  //                   .where((OrderedNutrient item) => item
                  //                       .name!
                  //                       .toLowerCase()
                  //                       .contains(query.toLowerCase()))
                  //                   .toList();
                  //             },
                  //           );
                  //         },
                  //       ),
                  //       ...List<ListTile>.generate(
                  //         filteredList.length,
                  //         (int index) {
                  //           final nutrient = filteredList[index];
                  //           return ListTile(
                  //             title: Text(nutrient.name!),
                  //             onTap: () =>
                  //                 Navigator.of(context).pop(nutrient),
                  //           );
                  //         },
                  //       ),
                  //     ],
                  //   ),
                  //   negativeAction: SmoothActionButton(
                  //     onPressed: () => Navigator.pop(context),
                  //     text: appLocalizations.cancel,
                  //   ),
                  // );
                },
              );
            },
          );
          if (selected != null) {
            setState(() => _nutritionContainer.add(selected));
          }
        },
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: ROUNDED_BORDER_RADIUS,
            ),
          ),
        ),
        icon: const Icon(Icons.add),
        label: const Text('nutrition_page_add_nutrient'),
      );

  // Future<bool> _sh
  //owCancelPopup(final AppLocalizations appLocalizations) async {
  //   //if no changes made then returns true to the onWillPop
  //   // allowing it to let the user return back to previous screen
  //   if (!_isEdited()) {
  //     return true;
  //   }
  //   return await showDialog<bool>(
  //         context: context,
  //         builder: (BuildContext context) => SmoothAlertDialog(
  //           title: appLocalizations.general_confirmation,
  //           body: Text(appLocalizations.nutrition_page_close_confirmation),
  //           negativeAction: SmoothActionButton(
  //             text: appLocalizations.cancel,
  //             // returns false to onWillPop after the alert dialog is closed with cancel button
  //             //blocking return to the previous screen
  //             onPressed: () => Navigator.pop(context),
  //           ),
  //           positiveAction: SmoothActionButton(
  //             text: appLocalizations.okay,
  //             // returns true to onWillPop after the alert dialog is closed with close button
  //             //letting return to the previous screen
  //             onPressed: () => Navigator.pop(context, true),
  //           ),
  //         ),
  //       ) ??
  //       // in case alert dialog is closed, a false is return
  //       // blocking the return to the previous screen
  //       false;
  // }

  // Future<void> _validateAndSave(final AppLocalizations localizations,
  //     final LocalDatabase localDatabase) async {
  //   if (!_formKey.currentState!.validate()) {
  //     return;
  //   }

  //   await _showSavePopup(localizations, localDatabase);
  // }

  // Future<void> _showSavePopup(
  //   final AppLocalizations appLocalizations,
  //   final LocalDatabase localDatabase,
  // ) async {
  //   final shouldSave = await showDialog<bool>(
  //         context: context,
  //         builder: (BuildContext context) => SmoothAlertDialog(
  //           title: appLocalizations.general_confirmation,
  //           body: Text(appLocalizations.save_confirmation),
  //           negativeAction: SmoothActionButton(
  //             text: appLocalizations.cancel,
  //             onPressed: () => Navigator.pop(context, false),
  //           ),
  //           positiveAction: SmoothActionButton(
  //             text: appLocalizations.save.toUpperCase(),
  //             onPressed: () => Navigator.pop(context, true),
  //           ),
  //         ),
  //       ) ??
  //       false;

  //   if (shouldSave) {
  //     await _save(localDatabase);
  //   }
  // }

  // Future<void> _save(final LocalDatabase localDatabase) async {
  //   for (final key in _controllers.keys) {
  //     final controller = _controllers[key]!;
  //     _nutritionContainer.setControllerText(key, controller.text);
  //   }
  //   // minimal product: we only want to save the nutrients
  //   final inputProduct = _nutritionContainer.getProduct();
  //   await ProductRefresher().saveAndRefresh(
  //     context: context,
  //     localDatabase: localDatabase,
  //     product: inputProduct,
  //   );
  // }

  // bool _isEdited() {
  //   for (final key in _controllers.keys) {
  //     final controller = _controllers[key]!;
  //     if (_nutritionContainer.getValue(key) != null) {
  //       if (_numberFormat.format(_nutritionContainer.getValue(key)) !=
  //           controller.value.text) {
  //         //if any controller is not equal to the value in the container
  //         // then the form is edited, return true
  //         return true;
  //       }
  //     }
  //   }
  //   //else form is not edited just return false
  //   return false;
  // }
}
