import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_qr_reader/flutter_qr_reader.dart';
import 'package:openfoodfacts/model/OrderedNutrients.dart';
import 'package:private_fit/application/open_food/bloc/open_food_bloc.dart';
import 'package:private_fit/application/open_food/bloc/open_food_dess_bloc.dart';
import 'package:private_fit/domain/open_food/open_food_facts_failures.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/open_food/product_cards/ordered_nutrients_cache.dart';
import 'package:private_fit/presentation/routes/router.gr.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/app_styles.dart';

class ScannerView extends StatelessWidget {
  const ScannerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final i10n = context.l10n;
    return BlocBuilder<OpenFoodBloc, OpenFoodState>(
      bloc: getIt<OpenFoodBloc>(),
      builder: (context, state) {
        return state.map(
          initial: (_) {
            return ScannerFoodWidget(
              i10n: i10n,
            ); //OnInitialState(i10n: i10n);
          },
          loadSuccess: (value) {
            return FutureBuilder<OrderedNutrients>(
              future: OrderedNutrientsCache().download(context),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  AutoRouter.of(context).navigate(
                    FDARoute(fetchedProduct: value.fetchedProduct.product!),
                  );
                }
                return const Scaffold(
                  backgroundColor: Colors.white,
                  body: Center(
                    child: CupertinoActivityIndicator(),
                  ),
                );
              },
            );
          },
          dataSavedSuccesful: (d) => ScannerFoodWidget(
            i10n: i10n,
          ),
          failureGettingFood: (failures) {
            return OnFailures(openFoodFailures: failures.openFoodfailures);
          },
          failureFetchingFromoDess: (_) {
            return Container();
          },
        );
      },
    );
  }
}

class OnFailures extends StatelessWidget {
  const OnFailures({
    Key? key,
    required this.openFoodFailures,
  }) : super(key: key);
  final OpenFoodFailures openFoodFailures;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AutoSizeText(
          openFoodFailures.maybeMap(
            internetNotFound: (_) => 'internetNotFound',
            failedToGetCameraPermissions: (_) => 'failedToGetCameraPermissions',
            internetError: (_) => 'internetError',
            userCancelled: (_) => 'userCancelled',
            codeInvalid: (_) => 'codeInvalid',
            orElse: () => 'An unknown error has occured',
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class OnInitialState extends StatelessWidget {
  OnInitialState({
    Key? key,
    required this.i10n,
  }) : super(key: key);

  final AppLocalizations i10n;
  late QrReaderViewController qrReaderViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QrReaderView(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        callback: (QrReaderViewController controller) {
          qrReaderViewController = controller
            ..startCamera(
              (String qrData, List<Offset> offsets) async {
                context.read<OpenFoodBloc>().add(
                      OpenFoodEvent.qrDataOnSuccess(qrData),
                    );

                await qrReaderViewController.stopCamera();
              },
            );
        },
      ),
    );
  }
}

class ScannerFoodWidget extends StatelessWidget {
  const ScannerFoodWidget({super.key, required this.i10n});

  // const ScannerFoodWidget({Key? key, required this.i10n}) : super(key: key);

  final AppLocalizations i10n;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AutoSizeText(
          'Nutritions',

          // style: theme.textTheme.headline6,
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 5),
            child: CardCell.body(
              context,
              title: 'DISCOVER',
              child: const Text(
                'You want to discover and monitor anything you eat and drink from around the world, Then here you can scan any product you buy ... Just scan the barcode of the food and save that data securely encryptped using',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              20,
              30,
              20,
              5,
            ),
            child: CardCell.body(
              context,
              title: 'ATPLATFORM POWERED',
              child: const Text(
                'All the Data of your scans are stored on you atsign private corner fully encrypted and secured, You and only you can decide what you can do with it',
              ),
            ),
          ),
          const HistoryView(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          AutoRouter.of(context).navigate(const QRViewExampleRoute());
        },
        label: const AutoSizeText(
          'scan',
        ),
        icon: const Icon(
          Icons.qr_code_scanner_rounded,
        ),
      ),
    );
  }
}

class HistoryView extends StatelessWidget {
  const HistoryView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocBuilder<OpenFoodDessBloc, OpenFoodDessState>(
      bloc: getIt<OpenFoodDessBloc>()..add(const OpenFoodDessEvent.started()),
      builder: (context, state) {
        return state.showErrors
            ? SizedBox(
                child: Card(
                  child: AutoSizeText(
                    state.atPlatformFailure!.maybeWhen(
                      serverError: () => 'Server error',
                      orElse: () => 'an Unknown error has just occured',
                    ),
                  ),
                ),
              )
            : state.isLoaded
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // FloatingActionButton.extended(
                      //   onPressed: () {},
                      //   icon: const Icon(Icons.add),
                      //   label: const Text('Create'),
                      // ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(25, 30, 25, 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Scanned items',
                              style: theme.textTheme.bodyLarge!.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text('View all'),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Stack(
                          children: [
                            AspectRatio(
                              aspectRatio: 16 / 8,
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xFF866ee1),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: AspectRatio(
                                aspectRatio: 16 / 9,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFffd2dd),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  state.product!.brands!,
                                                  style: theme
                                                      .textTheme.headline6!
                                                      .copyWith(
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                    left: 3,
                                                  ),
                                                  child: AutoSizeText(
                                                    state.product!
                                                            .productName ??
                                                        '',
                                                    style: theme
                                                        .textTheme.titleLarge!
                                                        .copyWith(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 5),
                                                Text(
                                                  state.product!.brandsTags
                                                          ?.first ??
                                                      '',
                                                  style: theme
                                                      .textTheme.bodyMedium!
                                                      .copyWith(
                                                    color: Colors.black
                                                        .withOpacity(
                                                      0.45,
                                                    ),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                const Padding(
                                                  padding: EdgeInsets.all(5),
                                                  child: Text('Ingridients'),
                                                ),
                                                Separator.spacer(),
                                                ItemCell(
                                                  icon: Icons.nature,
                                                  text: state.nutrition_01!,
                                                ),
                                                Separator.spacer(Space.small),
                                                ItemCell(
                                                  icon:
                                                      Icons.food_bank_outlined,
                                                  text: state.nutrition_02!,
                                                ),
                                                Separator.spacer(Space.small),
                                                ItemCell(
                                                  icon: Icons.cake,
                                                  text: state.nutrition_03!,
                                                ),
                                              ],
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                10,
                                              ), // Image border(
                                              child: Image.network(
                                                state.product!.selectedImages!
                                                        .first.url ??
                                                    '',
                                                fit: BoxFit.cover,
                                                // height: 72,
                                                // width: 90,
                                                loadingBuilder: (
                                                  BuildContext context,
                                                  Widget child,
                                                  ImageChunkEvent?
                                                      loadingProgress,
                                                ) {
                                                  if (loadingProgress == null) {
                                                    return child;
                                                  }
                                                  return Center(
                                                    child:
                                                        CircularProgressIndicator(
                                                      value: loadingProgress
                                                                  .expectedTotalBytes !=
                                                              null
                                                          ? loadingProgress
                                                                  .cumulativeBytesLoaded /
                                                              loadingProgress
                                                                  .expectedTotalBytes!
                                                          : null,
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ],
                                        ),
                                        // Row(
                                        //   children: [
                                        //     Expanded(
                                        //       child: Column(
                                        //         crossAxisAlignment:
                                        //             CrossAxisAlignment.start,
                                        //         children: [
                                        // Text(
                                        //   state.product!.brands!,
                                        //   style: theme
                                        //       .textTheme.headline6!
                                        //       .copyWith(
                                        //     fontWeight:
                                        //         FontWeight.w500,
                                        //   ),
                                        // ),
                                        //           Text(
                                        //             'Read screens 1.1 - 1.2 of',
                                        //             style: theme
                                        //                 .textTheme.subtitle1!
                                        //                 .copyWith(
                                        //               fontWeight:
                                        //                   FontWeight.w400,
                                        //               color: Colors.black54,
                                        //             ),
                                        //           ),
                                        //         ],
                                        //       ),
                                        //     ),
                                        //   ],
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Container(
                    color: Colors.pink,
                  );
      },
    );
  }
}
