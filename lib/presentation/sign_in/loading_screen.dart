import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: AutoSizeText('On Boarded...Loading screen')),
    );
  }
}
