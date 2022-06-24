import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:private_fit/application/open_food/bloc/open_food_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/presentation/open_food/widgets/open_food_widget.dart';

class OpenFoodPage extends StatelessWidget {
  const OpenFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OpenFoodBloc>(
      create: (context) =>
          getIt<OpenFoodBloc>()..add(const OpenFoodEvent.getFoodResult()),
      child: const OpenFoodWidget(),
    );
  }
}
