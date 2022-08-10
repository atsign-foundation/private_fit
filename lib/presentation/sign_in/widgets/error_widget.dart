import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ErrorOboarding extends StatelessWidget {
  const ErrorOboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: AutoSizeText('ERROR')),
    );
  }
}
