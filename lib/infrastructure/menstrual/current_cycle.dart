import 'package:flutter/material.dart';

class CurrentCycle extends StatelessWidget {
  const CurrentCycle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Current Cycle')),
      body: Container(
        color: Colors.yellow,
      ),
    );
  }
}
