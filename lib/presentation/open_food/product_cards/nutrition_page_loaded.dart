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
          //todo (kzawadi): store the data to atsign secondary server
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
          //todo(kzawadi): clean these string by re-implementing them in i10n
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

  Widget _switchNoNutrition(final AppLocalizations localizations) =>
      OpenFoodCard(
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
}
