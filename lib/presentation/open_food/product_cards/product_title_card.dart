// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter/material.dart';
import 'package:openfoodfacts/model/Product.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/open_food/product_cards/extension_on_text_helper.dart';
import 'package:private_fit/presentation/open_food/product_cards/product_cards_helper.dart';

class ProductTitleCard extends StatelessWidget {
  const ProductTitleCard(
    this.product,
    this.isSelectable, {
    super.key,
    this.dense = false,
    this.isRemovable = true,
  });

  final Product product;
  final bool dense;
  final bool isSelectable;
  final bool isRemovable;

  @override
  Widget build(BuildContext context) {
    final i10n = context.l10n;

    final themeData = Theme.of(context);

    return Align(
      alignment: Alignment.topLeft,
      child: InkWell(
        onTap: (getProductName(product, i10n) == i10n.app_title)
            ? () async {
                // await Navigator.push<Product?>(
                //   context,
                //   MaterialPageRoute<Product>(
                //     builder: (BuildContext context) =>
                //         AddBasicDetailsPage(product),
                //   ),
                // );
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
