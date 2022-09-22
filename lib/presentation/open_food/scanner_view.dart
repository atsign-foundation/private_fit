import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_qr_reader/flutter_qr_reader.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:openfoodfacts/model/OrderedNutrients.dart';
import 'package:private_fit/application/open_food/bloc/open_food_bloc.dart';
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
      backgroundColor: Colors.pink,
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
  const ScannerFoodWidget({Key? key, required this.i10n}) : super(key: key);

  final AppLocalizations i10n;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nutritional facts'),
      ),
      body: Stack(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(3),
          //   child:

          Positioned(
            bottom: 50,
            child: Card(
              margin: const EdgeInsets.all(8),
              // color: Theme.of(context).cardColor,
              child: Text(
                'Scan any Food or Drink product using the product '
                "barcode and get all the information about it's "
                'nutriosinal contents',
                style: GoogleFonts.poppins(
                  fontSize: 15,
                ),
              ),
            ),
          ),
          // ),
          // Align(
          //   alignment: Alignment.topLeft,
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 24, bottom: 8),
          //     child: AutoSizeText(
          //       'History',
          //       style: GoogleFonts.poppins(
          //         fontSize: 15,
          //       ),
          //     ),
          //   ),
          // ), //todo(kzawadi): fetch the saved nutritional data from dess

          // Positioned(
          //   bottom: 200,
          //   // flex: 5,
          //   child: ListView.builder(
          //     shrinkWrap: true,
          //     itemCount: 50,
          //     padding: const EdgeInsets.all(15),
          //     itemBuilder: (context, i) {
          //       return const Text('data');
          //     },
          //   ),
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          AutoRouter.of(context).navigate(OnInitialStateRoute(i10n: i10n));
        },
        label: AutoSizeText(
          'scan',
          style: GoogleFonts.poppins(
            fontSize: 14,
          ),
        ),
        icon: const Icon(
          Icons.qr_code_scanner_rounded,
        ),
      ),
    );
  }
}
