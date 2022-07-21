import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:private_fit/application/menstrual/bloc/menstrual_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/presentation/menstrual/menstrual_view.dart';

class MenstrualPage extends StatelessWidget {
  const MenstrualPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenstrualBloc>(
      create: (context) => getIt<MenstrualBloc>(),
      child: MenstrualView(),
    );
  }
}
