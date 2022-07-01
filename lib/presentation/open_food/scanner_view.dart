import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_qr_reader/flutter_qr_reader.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:private_fit/application/open_food/bloc/open_food_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/open_food/product_cards/smooth_product_card_found.dart';
import 'package:private_fit/presentation/open_food/product_details_view.dart';
import 'package:private_fit/presentation/open_food/utils/scanner_visor_painter.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/app_styles.dart';

// ignore: must_be_immutable
class ScannerView extends StatelessWidget {
  ScannerView({Key? key}) : super(key: key);
  late QrReaderViewController qrReaderViewController;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final i10n = context.l10n;
    return BlocBuilder<OpenFoodBloc, OpenFoodState>(
      bloc: getIt<OpenFoodBloc>(),
      builder: (context, state) {
        return state.map(
          initial: (_) {
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
          },
          loadSuccess: (value) {
            return SmoothProductCardFound(
              product: value.fetchedProduct.product!,
              heroTag: value.fetchedProduct.product!.barcode!,
              backgroundColor: Colors.white,
            );
            // ProductView(
            //   fetchedProduct: value.fetchedProduct,
            // ); //ProductDetailsView(fetchedProduct: value.fetchedProduct);
          },
        );
      },
    );
  }
}
