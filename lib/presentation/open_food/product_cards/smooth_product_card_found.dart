import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:openfoodfacts/model/Product.dart';
import 'package:openfoodfacts/personalized_search/matched_product_v2.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/open_food/product_cards/design_constants.dart';
import 'package:private_fit/presentation/open_food/product_cards/product_cards_helper.dart';
import 'package:private_fit/presentation/open_food/product_cards/smooth_card.dart';
import 'package:private_fit/presentation/open_food/product_cards/smooth_product_image.dart';
import 'package:private_fit/presentation/open_food/product_cards/ui_helpers.dart';

class SmoothProductCardFound extends StatelessWidget {
  const SmoothProductCardFound({
    super.key,
    required this.product,
    required this.heroTag,
    this.backgroundColor,
    this.onLongPress,
    this.onTap,
  });

  final Product product;
  final String heroTag;
  static const double elevation = 4;
  final Color? backgroundColor;
  final VoidCallback? onLongPress;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final i10n = context.l10n;

    // final UserPreferences userPreferences = context.watch<UserPreferences>();
    // final ProductPreferences productPreferences =
    //     context.watch<ProductPreferences>();
    final screenSize = MediaQuery.of(context).size;
    final themeData = Theme.of(context);
    final isDarkMode = themeData.colorScheme.brightness == Brightness.dark;
    final excludedAttributeIds = <String>[];
    //     userPreferences.getExcludedAttributeIds();
    final scores = <Widget>[];
    final iconSize = IconWidgetSizer.getIconSizeFromContext(context);
    final attributes = getPopulatedAttributes(
      product,
      SCORE_ATTRIBUTE_IDS,
      excludedAttributeIds,
    );
    // for (final attribute in attributes) {
    //   scores.add(SvgIconChip(attribute.iconUrl!, height: iconSize));
    // }
    // final matchedProduct = MatchedProductV2(
    //   product,
    //   productPreferences,
    // );
    // final ProductCompatibilityHelper helper =
    //     ProductCompatibilityHelper.product(matchedProduct);
    return GestureDetector(
      onTap: onTap ??
          () async {
            // await Navigator.push<Widget>(
            //   context,
            //   MaterialPageRoute<Widget>(
            //     builder: (BuildContext context) => ProductPage(product),
            //   ),
            // );
          },
      onLongPress: () {
        onLongPress?.call();
      },
      child: Hero(
        tag: heroTag,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
          child: SmoothCard(
            elevation: elevation,
            color: backgroundColor,
            padding: const EdgeInsets.all(VERY_SMALL_SPACE),
            child: Row(
              children: <Widget>[
                SmoothProductImage(
                  product: product,
                  width: screenSize.width * 0.20,
                  height: screenSize.width * 0.20,
                ),
                const Padding(padding: EdgeInsets.only(left: VERY_SMALL_SPACE)),
                Expanded(
                  child: SizedBox(
                    height: screenSize.width * 0.2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          getProductName(product, i10n),
                          overflow: TextOverflow.ellipsis,
                          style: themeData.textTheme.headline4,
                        ),
                        Text(
                          product.brands ?? i10n.app_title,
                          overflow: TextOverflow.ellipsis,
                          style: themeData.textTheme.subtitle1,
                        ),
                        Row(),
                      ],
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: VERY_SMALL_SPACE)),
                Padding(
                  padding: const EdgeInsets.all(VERY_SMALL_SPACE),
                  child: Column(
                    children: scores,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
