import 'dart:math' as math;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/shared/images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AllImages().trainer,
                ),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            top: 700,
            left: 30,
            child: Transform.rotate(
              angle: -math.pi / 2,
              alignment: Alignment.centerLeft,
              child: AutoSizeText(
                l10n.app_title,
                style: const TextStyle(
                  fontSize: 60,
                  color: Color.fromARGB(255, 7, 54, 92),
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 110,
            left: 70,
            child: Transform.rotate(
              angle: -math.pi / 2,
              alignment: Alignment.centerLeft,
              child: const AutoSizeText(
                'Welcome @22fine90',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 5, 99, 98),
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
