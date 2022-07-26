import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedometer/pedometer.dart';
import 'package:private_fit/application/pedometer/bloc/pedometer_bloc.dart';
import 'package:private_fit/injections.dart';

class PedometerView extends StatelessWidget {
  const PedometerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PedometerBloc, PedometerState>(
      bloc: getIt<PedometerBloc>()..add(const PedometerEvent.initPedometer()),
      // listener: (BuildContext context, PedometerState state) {},
      builder: (BuildContext context, PedometerState state) {
        return Center(
          child: Column(
            children: [
              if (state.liveData)
                StreamBuilder<StepCount>(
                  stream: state.stepCountStream,
                  builder: (
                    BuildContext context,
                    AsyncSnapshot<StepCount> snapshot,
                  ) {
                    List<Widget> _children;

                    if (snapshot.hasError) {
                      _children = [
                        const Icon(
                          Icons.error_outline,
                          color: Colors.red,
                          size: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text('Error: ${snapshot.error}'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text('Stack trace: ${snapshot.stackTrace}'),
                        ),
                      ];
                    } else {
                      switch (snapshot.connectionState) {
                        case ConnectionState.none:
                          _children = [
                            const Icon(
                              Icons.info,
                              color: Colors.red,
                              size: 60,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Text('Select a lot'),
                            ),
                          ];
                          break;
                        case ConnectionState.waiting:
                          _children = [
                            const SizedBox(
                              width: 60,
                              height: 60,
                              child: CircularProgressIndicator(),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Text('Awaiting ...'),
                            ),
                          ];

                          break;
                        case ConnectionState.active:
                          _children = [
                            const Icon(
                              Icons.check_circle_outline,
                              color: Colors.green,
                              size: 60,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text(
                                '${snapshot.data!.steps} Step',
                              ),
                            ),
                          ];
                          break;
                        case ConnectionState.done:
                          _children = [
                            const Icon(
                              Icons.info,
                              color: Colors.blue,
                              size: 60,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text(
                                '\$${snapshot.data!.steps.toString()} (closed)',
                              ),
                            ),
                          ];

                          break;
                      }
                    }

                    return Center(
                      child: Column(
                        children: _children,
                      ),
                    );
                  },
                )
            ],
          ),
        );
      },
    );
  }
}
