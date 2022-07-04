import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:openfoodfacts/model/Product.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/open_food/animations/smooth_reveal_animation.dart';
import 'package:private_fit/presentation/open_food/product_cards/design_constants.dart';
import 'package:private_fit/presentation/open_food/product_cards/open_food_card.dart';
import 'package:private_fit/presentation/open_food/product_cards/open_food_product_image.dart';
import 'package:private_fit/presentation/open_food/product_cards/product_cards_helper.dart';

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
    //     userPreferences.getExcludedAttributeIds();
    final scores = <Widget>[];
    // for (final attribute in attributes) {
    //   scores.add(SvgIconChip(attribute.iconUrl!, height: iconSize));
    // }
    // final matchedProduct = MatchedProductV2(
    //   product,
    //   productPreferences,
    // );
    // final ProductCompatibilityHelper helper =
    //     ProductCompatibilityHelper.product(matchedProduct);
    return Hero(
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
    );
  }
}

class ProductQueryPage extends StatefulWidget {
  const ProductQueryPage({
    super.key,
    // required this.productListSupplier,
    required this.heroTag,
    required this.name,
    this.lastUpdate,
    required this.product,
  });

  // final ProductListSupplier productListSupplier;
  final String heroTag;
  final String name;
  final int? lastUpdate;
  final Product product;

  @override
  State<ProductQueryPage> createState() => _ProductQueryPageState();
}

class _ProductQueryPageState extends State<ProductQueryPage> {
  // we have to use GlobalKey's for SnackBar's because of nested Scaffold's:
  // not the 2 Scaffold's here but one of them and the one on top (PageManager)
  final GlobalKey<ScaffoldMessengerState> _scaffoldKeyNotEmpty =
      GlobalKey<ScaffoldMessengerState>();
  final bool _showBackToTopButton = true;
  late ScrollController _scrollController;

  // late ProductQueryModel _model;

  String get traceTitle => 'search_page';

  String get traceName => 'Opened search_page';

  @override
  void initState() {
    super.initState();
    // _lastUpdate = widget.lastUpdate;
    // _model = ProductQueryModel(widget.productListSupplier);
    _scrollController = ScrollController();
    //   ..addListener(() {
    //     setState(() {
    //       if (_scrollController.offset >= 400) {
    //         _showBackToTopButton = true;
    //       } else {
    //         _showBackToTopButton = false;
    //       }
    //     });
    //   });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final i10n = context.l10n;
    final screenSize = MediaQuery.of(context).size;
    final themeData = Theme.of(context);
    return _getNotEmptyScreen(screenSize, themeData, i10n);
  }

  Widget _getAppBarTitle() => AutoSizeText(widget.name, maxLines: 2);

  Widget _getNotEmptyScreen(
    final Size screenSize,
    final ThemeData themeData,
    final AppLocalizations appLocalizations,
  ) =>
      ScaffoldMessenger(
        key: _scaffoldKeyNotEmpty,
        child: Scaffold(
          floatingActionButton: Row(
            mainAxisAlignment: _showBackToTopButton
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              Visibility(
                visible: _showBackToTopButton,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: _showBackToTopButton ? 1.0 : 0.0,
                  child: SmoothRevealAnimation(
                    animationCurve: Curves.easeInOutBack,
                    startOffset: const Offset(0, 1),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: FloatingActionButton(
                        backgroundColor: themeData.colorScheme.secondary,
                        onPressed: _scrollToTop,
                        tooltip: 'go_back_to_top',
                        child: Icon(
                          Icons.arrow_upward,
                          color: themeData.colorScheme.onSecondary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          body: Stack(
            children: <Widget>[
              _getHero(screenSize, themeData),
              RefreshIndicator(
                onRefresh: () async {
                  await Future<dynamic>.delayed(
                    const Duration(milliseconds: 100),
                  );
                },
                child: Scrollbar(
                  child: CustomScrollView(
                    controller: _scrollController,
                    slivers: <Widget>[
                      SliverAppBar(
                        backgroundColor: themeData.scaffoldBackgroundColor,
                        pinned: true,
                        elevation: 0,
                        automaticallyImplyLeading: false,
                        leading: const _BackButton(),
                        actions: <Widget>[
                          TextButton.icon(
                            icon: const Icon(Icons.filter_list),
                            label: Text(
                              'filter',
                              style: themeData.textTheme.subtitle1,
                            ),
                            onPressed: () {
                              // showCupertinoModalBottomSheet<Widget>(
                              //   context: context,
                              //   backgroundColor: Colors.transparent,
                              //   builder: (BuildContext context) =>
                              //       GroupQueryFilterView(
                              //     categories: _model.categories,
                              //     categoriesList: _model.sortedCategories,
                              //     callback: (String category) {
                              //       _model.selectCategory(category);
                              //       setState(() {});
                              //     },
                              //   ),
                              // );
                            },
                          )
                        ],
                        title: _getAppBarTitle(),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {
                            // if (index >= product.displayProducts!.length) {
                            // final button
                            // final int already =
                            //     _model.displayProducts!.length;
                            // final int totalSize =
                            //     _model.supplier.partialProductList.totalSize;
                            // final int next = max(
                            //   0,
                            //   min(
                            //     _model.supplier.productQuery.pageSize,
                            //     totalSize - already,
                            //   ),
                            // );
                            // final Widget child;
                            // if (next == 0) {
                            //   child = Text(
                            //     appLocalizations
                            //         .product_search_no_more_results(
                            //       totalSize,
                            //     ),
                            //   );
                            // } else {
                            //   child = ElevatedButton.icon(
                            //     icon: const Icon(Icons.download_rounded),
                            //     label: Text(
                            //       appLocalizations
                            //           .product_search_button_download_more(
                            //         next,
                            //         already,
                            //         totalSize,
                            //       ),
                            //     ),
                            //     onPressed: () async {
                            //       final bool? error =
                            //           await LoadingDialog.run<bool>(
                            //         context: context,
                            //         future: _model.loadNextPage(),
                            //       );
                            //       if (error != true) {
                            //         await LoadingDialog.error(
                            //           context: context,
                            //           title: _model.loadingError,
                            //         );
                            //       }
                            //     },
                            //   );
                            // }
                            // return Padding(
                            //   padding: const EdgeInsets.only(
                            //       bottom: 90.0, left: 20, right: 20),
                            //   child: child,
                            // );
                            // }
                            // final Product product =
                            //     _model.displayProducts![index];
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                              child: SmoothProductCardFound(
                                heroTag: widget.product.barcode!,
                                product: widget.product,
                              ),
                            );
                          },
                          // childCount: _model.displayProducts!.length + 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _getHero(final Size screenSize, final ThemeData themeData) => Hero(
        tag: widget.heroTag,
        child: Container(
          width: screenSize.width,
          height: double.infinity,
          padding: const EdgeInsets.only(left: 10, right: 10, top: 96),
        ),
      );

  // Widget _getErrorWidget(
  //   final Size screenSize,
  //   final ThemeData themeData,
  //   final String errorMessage,
  // ) {
  //   return _getEmptyScreen(
  //     screenSize,
  //     themeData,
  //     Padding(
  //       padding: const EdgeInsets.all(8.0),
  //       child: SmoothErrorCard(
  //         errorMessage: errorMessage,
  //         tryAgainFunction: retryConnection,
  //       ),
  //     ),
  //   );
  // }

  // Widget _getEmptyText(
  //   final ThemeData themeData,
  //   final String message,
  // ) =>
  //     Row(
  //       mainAxisSize: MainAxisSize.max,
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: <Widget>[
  //         Flexible(
  //           child: Text(
  //             message,
  //             textAlign: TextAlign.center,
  //             style: themeData.textTheme.subtitle1!.copyWith(fontSize: 18.0),
  //           ),
  //         ),
  //       ],
  //     );

  // void _showRefreshSnackBar(
  //   final GlobalKey<ScaffoldMessengerState> scaffoldKey,
  // ) {
  //   if (_lastUpdate == null) {
  //     return;
  //   }
  //   final ProductListSupplier? refreshSupplier =
  //       _model.supplier.getRefreshSupplier();
  //   if (refreshSupplier == null) {
  //     return;
  //   }
  //   final String lastTime =
  //       ProductQueryPageHelper.getDurationStringFromTimestamp(
  //           _lastUpdate!, context);
  //   final String message =
  //       '${AppLocalizations.of(context).cached_results_from} $lastTime';
  //   _lastUpdate = null;

  //   Future<void>.delayed(
  //     Duration.zero,
  //     () => scaffoldKey.currentState?.showSnackBar(
  //       SnackBar(
  //         content: Text(message),
  //         duration: const Duration(seconds: 5),
  //         action: SnackBarAction(
  //           label: AppLocalizations.of(context).label_refresh,
  //           onPressed: () async {
  //             final bool? error = await LoadingDialog.run<bool>(
  //               context: context,
  //               future: _model.loadFromTop(),
  //             );
  //             if (error != true) {
  //               await LoadingDialog.error(context: context);
  //             }
  //           },
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // void retryConnection() {
  //   setState(() {
  //     _model = ProductQueryModel(widget.productListSupplier);
  //   });
  // }

  // Future<void> refreshList() async {
  //   final ProductListSupplier? refreshSupplier =
  //       widget.productListSupplier.getRefreshSupplier();
  //   setState(
  //     // How do we refresh a supplier that has no refresher? With itself.
  //     () => _model =
  //         ProductQueryModel(refreshSupplier ?? widget.productListSupplier),
  //   );
  //   return;
  // }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(seconds: 3),
      curve: Curves.linear,
    );
  }
}

class _BackButton extends StatelessWidget {
  const _BackButton();

  @override
  Widget build(BuildContext context) => IconButton(
        icon: const Icon(Icons.arrow_back_ios_new),
        tooltip: MaterialLocalizations.of(context).backButtonTooltip,
        onPressed: () {
          Navigator.maybePop(context);
        },
      );
}
