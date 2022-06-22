import 'package:flutter/material.dart';
import 'package:private_fit/l10n/l10n.dart';

class SplashAppBar extends StatelessWidget {
  const SplashAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i10n = context.l10n;
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(129, 1, 1, 1),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          bottomLeft: Radius.circular(8),
        ),
      ),
      padding: const EdgeInsets.only(
        top: 8,
        bottom: 8,
        left: 10,
        right: 12,
      ),
      child: Text(
        i10n.app_title,
        textAlign: TextAlign.right,
        style: const TextStyle(
          letterSpacing: 2,
          fontFamily: 'Staatliches',
          fontWeight: FontWeight.bold,
          color: Colors.white, //Color.fromARGB(255, 17, 195, 211),
          fontSize: 10.5,
        ),
      ),
    );
  }
}
