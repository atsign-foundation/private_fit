import 'package:flutter/material.dart';

/// Basic loading view, with a `CircularProgressIndicator` at the center.
class LoadingView extends StatelessWidget {
  const LoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

/// Places a `CircularProgressIndicator` widget in the middle of a slivered widget.
class LoadingSliverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      child: LoadingView(),
    );
  }
}
