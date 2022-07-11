import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_qr_reader/flutter_qr_reader.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:openfoodfacts/model/OrderedNutrients.dart';
import 'package:private_fit/application/open_food/bloc/open_food_bloc.dart';
import 'package:private_fit/domain/open_food/open_food_facts_failures.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/open_food/product_cards/nutrition_page_loaded.dart';
import 'package:private_fit/presentation/open_food/product_cards/ordered_nutrients_cache.dart';
import 'package:private_fit/presentation/open_food/utils/scanner_visor_painter.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/app_styles.dart';

// ignore: must_be_immutable
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
            return OnInitialState(i10n: i10n);
          },
          loadSuccess: (value) {
            return FutureBuilder<OrderedNutrients>(
              future: OrderedNutrientsCache().download(context),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return FDA(
                    fetchedProduct: value.fetchedProduct.product!,
                  );
                }
                return const Scaffold(
                  backgroundColor: Colors.white,
                  body: Center(
                    child: CupertinoActivityIndicator(),
                  ),
                );
              },
            ); //OnLoadSuccess(fetchedProduct: value.fetchedProduct);
          },
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
          openFoodFailures.map(
            internetNotFound: (_) => 'internetNotFound',
            failedToGetCameraPermissions: (_) => 'failedToGetCameraPermissions',
            internetError: (_) => 'internetError',
            userCancelled: (_) => 'userCancelled',
            codeInvalid: (_) => 'codeInvalid',
          ),
        ),
      ),
    );
  }
}

// class OnLoadSuccess extends StatelessWidget {
//   const OnLoadSuccess({
//     Key? key,
//     required this.fetchedProduct,
//   }) : super(key: key);
//   final FetchedProduct fetchedProduct;
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<OrderedNutrients>(
//       future: OrderedNutrientsCache().download(context),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           return NutritionPageLoaded(
//             fetchedProduct.product!,
//             snapshot.data!,
//           );
//         }
//         return const Scaffold(
//           backgroundColor: Colors.white,
//           body: Center(
//             child: CupertinoActivityIndicator(),
//           ),
//         );
//       },
//     );
//   }
// }

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
    return Material(
      child: Stack(
        children: [
          Align(
            child: CustomPaint(
              painter: ScanVisorPainter(),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset('assets/images/running.png').image,
                fit: BoxFit.cover,
              ),
            ),
            child: GlassmorphicContainer(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 300,
              borderRadius: 0,
              blur: 2.5,
              alignment: Alignment.bottomCenter,
              border: 0,
              linearGradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFFF75035).withAlpha(55),
                  const Color(0xFFffffff).withAlpha(45),
                ],
                stops: const [
                  0.3,
                  1,
                ],
              ),
              borderGradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  const Color(0xFF4579C5).withAlpha(100),
                  const Color(0x0fffffff).withAlpha(55),
                  const Color(0xFFF75035).withAlpha(10),
                ],
                stops: const [0.06, 0.95, 1],
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Colors.transparent,
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: AutoSizeText(
                        i10n.scanning_instructions,
                        style: kTitle2.copyWith(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: Center(
                child: AutoSizeText(
                  i10n.scanner_title,
                  style: kTitle.copyWith(fontSize: 30),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 3,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: QrReaderView(
                  width: 320,
                  height: 300,
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
