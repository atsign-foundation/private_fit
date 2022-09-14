import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_qr_reader/flutter_qr_reader.dart';
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
                  // FDA(
                  //   fetchedProduct: value.fetchedProduct.product!,
                  // );
                  //   const Scaffold(
                  //   backgroundColor: Colors.white,
                  //   body: Center(
                  //     child: CupertinoActivityIndicator(),
                  //   ),
                  // );
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
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const AutoSizeText('data'),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context)
                    .navigate(OnInitialStateRoute(i10n: i10n));
              },
              child: const Icon(Icons.scanner),
            ),
          ],
        ),
      ),
    );
  }
}
