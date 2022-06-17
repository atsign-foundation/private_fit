import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.cyan,
      child: AutoSizeText(
        'welcome home page',
      ),
    );
  }
}
