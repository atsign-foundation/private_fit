import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:private_fit/application/menstrual/bloc/menstrual_bloc.dart';
import 'package:private_fit/domain/menstrual/menstrual_data_model.dart';
import 'package:private_fit/domain/menstrual/value_objects.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/presentation/components/calendar_utils.dart';
import 'package:private_fit/shared/iconly_icon.dart';
import 'package:private_fit/shared/icons_curved.dart';
import 'package:table_calendar/table_calendar.dart';

String? codeDialog;
String? valueText;
dynamic _displayTextInputDialog(
  BuildContext context,
  String heading,
  String collectionName,
) async {
  return showDialog<dynamic>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text(heading),
        backgroundColor: Colors.pink[50],
        content: TextField(
          // onChanged: (value) {
          //   setState(() {
          //     valueText = value;
          //   });
          // },
          // controller: _textFieldController,
          decoration: InputDecoration(hintText: heading),
        ),
        actions: <Widget>[
          TextButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.pink[900]!),
            ),
            child: Text(
              'CANCEL',
              style: TextStyle(
                color: Colors.pink[50],
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.pink[900]!),
            ),
            child: Text(
              'SUBMIT',
              style: TextStyle(
                color: Colors.pink[50],
              ),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}

final boxDecoration = BoxDecoration(
  gradient: LinearGradient(
    stops: const [
      0.0,
      0.1,
      0.1,
      0.2,
      0.2,
      0.3,
      0.3,
      0.4,
      0.4,
      0.5,
      0.5,
      0.6,
      0.6,
      0.7,
      0.7,
      0.8,
      0.8,
      0.9,
      0.9,
      1
    ],
    colors: [
      Colors.pink[100]!,
      Colors.pink[100]!,
      Colors.pink[50]!,
      Colors.pink[50]!,
      Colors.pink[100]!,
      Colors.pink[100]!,
      Colors.pink[50]!,
      Colors.pink[50]!,
      Colors.pink[100]!,
      Colors.pink[100]!,
      Colors.pink[50]!,
      Colors.pink[50]!,
      Colors.pink[100]!,
      Colors.pink[100]!,
      Colors.pink[50]!,
      Colors.pink[50]!,
      Colors.pink[100]!,
      Colors.pink[100]!,
      Colors.pink[50]!,
      Colors.pink[50]!,
    ],
    tileMode: TileMode.repeated,
  ),
);

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        // final testModel = MenstrualDataModel.initialState().copyWith(
        //   periodStartDate: PeriodStartDate(
        //     DateTime(2022, 6, 28),
        //   ),
        //   bleedingDays: 4,
        // );

        // context.read<MenstrualBloc>().add(
        //       MenstrualEvent.save(testModel),
        //     );
        _displayTextInputDialog(context, 'Pick Date', '');
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: Theme.of(context).dividerColor,
          // width: 1,
        ),
      ),
      extendedIconLabelSpacing: 16,
      icon: IconlyIcon(
        path: IconlyCurved.Play,
        size: 25,
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      label: const Text('save cycle'),
    );
  }
}

final calendarBuilders2 = CalendarBuilders<dynamic>(
  todayBuilder: (context, date, events) => Container(
    margin: const EdgeInsets.all(6),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Theme.of(context).primaryColor.withOpacity(0.3),
      borderRadius: BorderRadius.circular(8),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          date.day.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        const Text(
          'Today',
          style: TextStyle(
            color: Colors.white,
            fontSize: 10,
          ),
        )
      ],
    ),
  ),
);

final headerStyle2 = HeaderStyle(
  titleTextStyle: const TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    letterSpacing: 1,
    fontSize: 22,
  ),
  formatButtonDecoration: BoxDecoration(
    color: Colors.pink[900],
    borderRadius: BorderRadius.circular(22),
  ),
  formatButtonTextStyle: const TextStyle(
    color: Colors.white,
  ),
  formatButtonShowsNext: false,
);

final calendarStyle2 = CalendarStyle(
  selectedTextStyle: const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    color: Colors.cyan,
  ),
  outsideTextStyle: const TextStyle(color: Colors.grey),
  todayTextStyle: const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.white,
  ),
  weekendTextStyle: const TextStyle(
    color: Colors.pink,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  ),
  defaultTextStyle: TextStyle(
    color: Colors.pink[900],
    fontSize: 20,
    fontWeight: FontWeight.w800,
  ),
  rangeHighlightScale: 30,
  rangeEndTextStyle: const TextStyle(
    color: Colors.white,
    fontSize: 20,
  ),
  rangeEndDecoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.pink[800],
  ),
  rangeStartDecoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.pink[800],
  ),
);

List<Event> getEventsForDay(DateTime day, MenstrualState pstate) {
  // const evea = Event('period daya');
  final eventsSource = {
    for (var i = 0; i < pstate.menstrualDataModel.bleedingDays; i++)
      pstate.menstrualDataModel.periodStartDate.getOrCrash().add(
            Duration(days: i),
          ): [const Event('period')],
  }..addAll({
      // pstate.menstrualDataModel.fertilephaseStart!: [evea],
      // pstate.menstrualDataModel.fertilephaseEnd!: [evea],
      // pstate.menstrualDataModel.ovulation!: [evea],
    });

  final kEvents = LinkedHashMap<DateTime, List<Event>>(
    equals: isSameDay,
    hashCode: getHashCode,
  )..addAll(eventsSource);

  return kEvents[day] ?? [];
}

class PeriodAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PeriodAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'My Cycles',
        style: TextStyle(
          fontSize: 27,
          color: Colors.black,
        ),
      ),
      backgroundColor:
          Theme.of(context).scaffoldBackgroundColor, //Colors.pink[900],
      centerTitle: true,
      elevation: 0,
    );
  }

  static final _appBar = AppBar();
  @override
  Size get preferredSize => _appBar.preferredSize;
}

class AverageStatsWidget extends StatelessWidget {
  const AverageStatsWidget({
    Key? key,
    required this.context,
    required this.title,
    required this.number,
  }) : super(key: key);

  final BuildContext context;
  final String title;
  final String number;

  @override
  Widget build(BuildContext context) {
    const TextStyle subHeadingStyle = TextStyle(
        fontFamily: 'Montserrat', color: Color(0xff120023), fontSize: 17);
    List<String> tit = [];
    tit = title.split(' ');
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 7, 5, 7),
      width: MediaQuery.of(context).size.width / 3.6,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Color(0xffE7CFFF),
      ),
      child: Column(
        children: [
          Text(
            tit[0],
            style: subHeadingStyle,
            softWrap: true,
          ),
          Text(
            tit[1],
            style: subHeadingStyle,
            softWrap: true,
          ),
          Text(
            number,
            style: const TextStyle(fontSize: 28, color: Colors.deepOrange),
          ),
          const Text('days'),
        ],
      ),
    );
  }
}

class CycleAnalysis extends StatelessWidget {
  const CycleAnalysis({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenstrualBloc, MenstrualState>(
      bloc: getIt<MenstrualBloc>(),
      builder: (BuildContext context, MenstrualState state) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.13,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AverageStatsWidget(
                context: context,
                title: 'Cycle Length',
                number: state.menstrualDataModel.periodCycleDays.toString(),
              ),
              AverageStatsWidget(
                context: context,
                title: 'Cycle Variation',
                number: '2.5',
              ),
              AverageStatsWidget(
                context: context,
                title: 'Period Length',
                number: state.menstrualDataModel.bleedingDays.toString(),
              ),
            ],
          ),
        );
      },
    );
  }
}
