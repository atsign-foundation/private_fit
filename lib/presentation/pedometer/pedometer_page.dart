import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:private_fit/application/activity_tracker/bloc/pedometer_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/presentation/pedometer/pedometer_view.dart';

class PedomaterPage extends StatelessWidget {
  const PedomaterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PedometerBloc>(
      create: (context) => getIt<PedometerBloc>(),
      child: PedometerView(
        key: key,
      ),
    );
  }
}
