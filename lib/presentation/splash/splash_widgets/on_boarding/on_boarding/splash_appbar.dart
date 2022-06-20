import 'package:flutter/material.dart';

class SplashAppBar extends StatelessWidget {
  const SplashAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xFF010101),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
            ),
          ),
          padding:
              const EdgeInsets.only(top: 8, bottom: 8, left: 50, right: 16),
          child: const Text(
            'PRIV@TEFIT', //todo implement these string using i18n
            textAlign: TextAlign.right,
            style: TextStyle(
              // package: OnBoarding.pkg,
              letterSpacing: 2,
              fontFamily: 'Staatliches',
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 10.5,
            ),
          ),
        ),
      ],
    );
  }
}
