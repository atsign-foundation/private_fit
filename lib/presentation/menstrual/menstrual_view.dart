import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:private_fit/application/menstrual/bloc/menstrual_bloc.dart';
import 'package:private_fit/injections.dart';

import 'package:private_fit/presentation/components/calendar_utils.dart';
import 'package:private_fit/presentation/menstrual/widgets/menstrual_widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class MenstrualView extends StatelessWidget {
  MenstrualView({super.key});

  final DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenstrualBloc, MenstrualState>(
      bloc: getIt<MenstrualBloc>()..add(const MenstrualEvent.started()),
      builder: (BuildContext context, MenstrualState state) {
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar: const PeriodAppBar(),
          floatingActionButton: const FloatingButton(),
          body: SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              // decoration: boxDecoration,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TableCalendar<dynamic>(
                    firstDay: kFirstDay,
                    lastDay: kLastDay,
                    focusedDay: _focusedDay,
                    calendarFormat: state.calendarFormat,
                    rangeStartDay: state.menstrualDataModel.fertilephaseStart,
                    rangeEndDay: state.menstrualDataModel.fertilephaseEnd,
                    calendarStyle: calendarStyle2,
                    headerStyle: headerStyle2,
                    startingDayOfWeek: StartingDayOfWeek.monday,
                    calendarBuilders: calendarBuilders2,
                    eventLoader: (day) {
                      return state.liveData
                          ? getEventsForDay(
                              day,
                              state,
                            )
                          : <dynamic>[];
                    },
                    onFormatChanged: (format) {
                      if (state.calendarFormat != format) {
                        context
                            .read<MenstrualBloc>()
                            .add(MenstrualEvent.calendarFormatChange(format));
                      }
                    },
                  ),
                  // const Divider(thickness: 10),
                  const Divider(thickness: 5, height: 40),
                  Column(children: const [CycleAnalysis()]),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
