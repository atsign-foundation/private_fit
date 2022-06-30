import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_qr_reader/flutter_qr_reader.dart';
import 'package:private_fit/application/open_food/bloc/open_food_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/presentation/open_food/product_details_view.dart';
import 'package:private_fit/presentation/open_food/utils/scanner_visor_painter.dart';
import 'package:private_fit/presentation/routes/router.gr.dart';

// ignore: must_be_immutable
class ScannerView extends StatelessWidget {
  ScannerView({Key? key}) : super(key: key);
  late QrReaderViewController qrReaderViewController;
  // final _appRouter = app_router.Router();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OpenFoodBloc, OpenFoodState>(
      bloc: getIt<OpenFoodBloc>(),
      builder: (context, state) {
        return state.map(
          initial: (_) {
            return Scaffold(
              backgroundColor: Colors.teal,
              body: Stack(
                children: [
                  Align(
                    child: CustomPaint(
                      painter: ScanVisorPainter(),
                    ),
                  ),
                  Align(
                    child: Container(
                      // width: (MediaQuery.of(context).size.width < 400 ||
                      //         MediaQuery.of(context).size.height < 400)
                      //     ? 200.0
                      //     : 380.0,
                      // height: (MediaQuery.of(context).size.width < 400 ||
                      //         MediaQuery.of(context).size.height < 400)
                      //     ? 150.0
                      //     : 270.0,
                      // decoration: const BoxDecoration(
                      //   color: Color.fromARGB(255, 14, 207, 233),
                      //   borderRadius: BorderRadius.all(Radius.circular(20)),
                      // ),
                      child: QrReaderView(
                        width: 380,
                        height: 270,
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
                ],
              ),
            );
          },
          loadSuccess: (value) {
            return ProductDetailsView(fetchedProduct: value.fetchedProduct);
          },
        );
      },
    );
  }
}
