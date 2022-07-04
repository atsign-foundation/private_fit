import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:private_fit/presentation/open_food/category_cards/abstract_cache.dart';
import 'package:private_fit/presentation/open_food/category_cards/asset_cache_helper.dart';
import 'package:private_fit/presentation/open_food/category_cards/svg_async_asset.dart';

/// Widget that displays a svg from network (and cache while waiting).
class SvgCache extends AbstractCache {
  const SvgCache(
    super.iconUrl, {
    super.key,
    super.width,
    super.height,
    this.color,
    super.displayAssetWhileWaiting = true,
  });

  final Color? color;

  @override
  List<String> getCachedFilenames() {
    final result = <String>[];
    final filename = getFilename();
    if (filename == null) {
      return result;
    }
    final cacheFilename = getCacheFilename(filename);
    final cacheTintableFilename = getCacheTintableFilename(filename);
    if (color == null) {
      result
        ..add(cacheFilename)
        ..add(cacheTintableFilename);
    } else {
      result
        ..add(cacheTintableFilename)
        ..add(cacheFilename);
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final cachedFilenames = getCachedFilenames();
    if (cachedFilenames.isEmpty) {
      return getDefaultUnknown();
    }
    var forcedColor = color;
    // cf. https://github.com/openfoodfacts/smooth-app/issues/2268
    // For tinted icons, when there's no color it's not good, as it will always
    // be black - not good for dark mode.
    // Here we detect lazily tinted icons if the URL contains "/icons/"
    // e.g. https://static.openfoodfacts.org/images/icons/dist/nutrition.svg
    if (forcedColor == null && iconUrl!.contains('/icons/')) {
      forcedColor = Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.black;
    }
    return SvgPicture.network(
      iconUrl!,
      color: forcedColor,
      width: width,
      height: height,
      placeholderBuilder: (BuildContext context) => displayAssetWhileWaiting
          ? SvgAsyncAsset(
              AssetCacheHelper(
                cachedFilenames,
                iconUrl!,
                width: width,
                height: height,
                color: forcedColor,
              ),
            )
          : getCircularProgressIndicator(),
    );
  }
}
