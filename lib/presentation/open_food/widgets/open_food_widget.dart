import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:private_fit/application/open_food/bloc/open_food_bloc.dart';

class OpenFoodWidget extends StatelessWidget {
  const OpenFoodWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OpenFoodBloc, OpenFoodState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (data) => const Scaffold(
            body: Center(
              child: Text('data'),
            ),
          ),
          orElse: () => const CircularProgressIndicator(),
        );
      },
    );
  }
}
