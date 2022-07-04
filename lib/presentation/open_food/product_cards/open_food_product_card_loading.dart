import 'package:flutter/material.dart';
import 'package:private_fit/presentation/open_food/product_cards/design_constants.dart';

class SmoothProductCardLoading extends StatelessWidget {
  const SmoothProductCardLoading({super.key, required this.barcode});

  final String barcode;

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: themeData.brightness == Brightness.light
            ? Colors.white
            : Colors.black,
        borderRadius: ROUNDED_BORDER_RADIUS,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(barcode, style: Theme.of(context).textTheme.subtitle1),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          const CircularProgressIndicator()
        ],
      ),
    );
  }
}
