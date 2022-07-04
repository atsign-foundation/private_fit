<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:openfoodfacts/model/Product.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/open_food/product_cards/add_basic_details_page.dart';
import 'package:private_fit/presentation/open_food/product_cards/extension_on_text_helper.dart';
import 'package:private_fit/presentation/open_food/product_cards/product_cards_helper.dart';
import 'package:provider/provider.dart';
// import 'package:smooth_app/data_models/continuous_scan_model.dart';
// import 'package:smooth_app/generic_lib/design_constants.dart';
// import 'package:smooth_app/helpers/extension_on_text_helper.dart';
// import 'package:smooth_app/helpers/product_cards_helper.dart';
// import 'package:smooth_app/pages/product/add_basic_details_page.dart';
=======
// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter/material.dart';
import 'package:openfoodfacts/model/Product.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/open_food/product_cards/extension_on_text_helper.dart';
import 'package:private_fit/presentation/open_food/product_cards/product_cards_helper.dart';
>>>>>>> feature/openfoodfacts

class ProductTitleCard extends StatelessWidget {
  const ProductTitleCard(
    this.product,
    this.isSelectable, {
<<<<<<< HEAD
=======
    super.key,
>>>>>>> feature/openfoodfacts
    this.dense = false,
    this.isRemovable = true,
  });

  final Product product;
  final bool dense;
  final bool isSelectable;
  final bool isRemovable;

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    // final appLocalizations = AppLocalizations.of(context);
    final i10n = context.l10n;

    final themeData = Theme.of(context);
    final String subtitleText;
    final Widget trailingWidget;
    final brands = product.brands ?? i10n.app_title;
    final quantity = product.quantity ?? '';
    // if (isRemovable && !isSelectable) {
    //   final ContinuousScanModel model = context.watch<ContinuousScanModel>();
    //   subtitleText = '$brands${quantity == '' ? '' : ', $quantity'}';
    //   trailingWidget = InkWell(
    //     onTap: () async => model.removeBarcode(product.barcode!),
    //     child: const Icon(
    //       Icons.clear_rounded,
    //       size: MINIMUM_TOUCH_SIZE,
    //     ),
    //   );
    // } else {
    //   subtitleText = brands;
    //   trailingWidget = Text(
    //     quantity,
    //     style: themeData.textTheme.headline3,
    //   ).selectable(isSelectable: isSelectable);
    // }
=======
    final i10n = context.l10n;

    final themeData = Theme.of(context);

>>>>>>> feature/openfoodfacts
    return Align(
      alignment: Alignment.topLeft,
      child: InkWell(
        onTap: (getProductName(product, i10n) == i10n.app_title)
            ? () async {
<<<<<<< HEAD
                await Navigator.push<Product?>(
                  context,
                  MaterialPageRoute<Product>(
                    builder: (BuildContext context) =>
                        AddBasicDetailsPage(product),
                  ),
                );
=======
                // await Navigator.push<Product?>(
                //   context,
                //   MaterialPageRoute<Product>(
                //     builder: (BuildContext context) =>
                //         AddBasicDetailsPage(product),
                //   ),
                // );
>>>>>>> feature/openfoodfacts
              }
            : null,
        child: ListTile(
          dense: dense,
          contentPadding: EdgeInsets.zero,
          title: Text(
            getProductName(product, i10n),
            style: themeData.textTheme.headline4,
          ).selectable(isSelectable: isSelectable),
          subtitle: Text(
            product.brands ?? 'selectable',
          ).selectable(isSelectable: isSelectable),
          // trailing: trailingWidget,
        ),
      ),
    );
  }
}
