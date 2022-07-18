import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:private_fit/application/menstrual/bloc/menstrual_bloc.dart';
import 'package:private_fit/injections.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class MenstrualView extends StatefulWidget {
  const MenstrualView({super.key});

  _MenstrualViewtate createState() => _MenstrualViewtate();
}

class _MenstrualViewtate extends State<MenstrualView> {
  // late CalendarController _controller;
  DateFormat formatter = DateFormat('yyyy-MM-dd');
  TextEditingController _textFieldController = TextEditingController();
  // final List<Widget> _children = [Community(), MenstrualView(), AboutUs()];
  bool _initialized = false;
  bool _error = false;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOn; // Can be toggled on/off by longpressing a date

  Map<DateTime, List<dynamic>>? _events;
  List<dynamic>? _selectedEvents;
  @override
  void initState() {
    super.initState();
    // _controller = CalendarController();
    // _getPeriodData();
    _events = {};
    _selectedEvents = <dynamic>[];
  }

  Map<String, dynamic> encodeMap(Map<DateTime, dynamic> map) {
    Map<String, dynamic>? newMap;
    map.forEach((key, dynamic value) {
      newMap!.putIfAbsent(key.toString(), () => map[key]);

      // newMap![key.toString()] = map[key];
    });
    return newMap!;
  }

  Map<DateTime, dynamic> decodeMap(Map<String, dynamic> map) {
    Map<DateTime, dynamic>? newMap;
    map.forEach((key, dynamic value) {
      newMap!.putIfAbsent(DateTime.parse(key), () => map[key]);
      // newMap![DateTime.parse(key)] = map[key];
    });
    return newMap!;
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MenstrualBloc, MenstrualState>(
      listener: (context, state) {},
      bloc: getIt<MenstrualBloc>(),
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          // actions: [
          //   SizedBox(
          //     height: 100,
          //     width: 80,
          //     child: IconButton(
          //         icon: Image.asset('assets/logo.png'), onPressed: () => {},),
          //   ),
          // ],
          title: const Text(
            'My Cycles',
            style: TextStyle(fontSize: 30),
          ),
          backgroundColor: Colors.pink[900],
          centerTitle: true,
          elevation: 5,
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: const Alignment(-1, 0),
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
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TableCalendar<dynamic>(
                  selectedDayPredicate: (day) {
                    // Use `selectedDayPredicate` to determine which day is currently selected.
                    // If this returns true, then `day` will be marked as selected.
                    // Using `isSameDay` is recommended to disregard
                    // the time-part of compared DateTime objects.
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    if (!isSameDay(_selectedDay, selectedDay)) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                        _rangeStart = null; // Important to clean those
                        _rangeEnd = null;
                        _rangeSelectionMode = RangeSelectionMode.toggledOff;
                      });
                    }
                  },
                  onRangeSelected: (start, end, focusedDay) {
                    setState(() {
                      _selectedDay = null;
                      _focusedDay = focusedDay;
                      _rangeStart = start;
                      _rangeEnd = end;
                      _rangeSelectionMode = RangeSelectionMode.toggledOn;
                    });
                  },
                  firstDay: DateTime(1900),
                  lastDay: DateTime(2100),
                  focusedDay:
                      state.menstrualDataModel.periodStartDate.getOrCrash(),
                  rangeStartDay: _rangeStart,
                  rangeEndDay: _rangeEnd,
                  calendarStyle: CalendarStyle(
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
                      color: Colors.pink[400],
                      // border: Border(
                      //   left: BorderSide(
                      //     color: Colors.green,
                      //     width: 3,
                      //   ),
                      // ),
                    ),
                    rangeStartDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.pink[800],
                      // border: Border(
                      //   left: BorderSide(
                      //     color: Colors.green,
                      //     width: 3,
                      //   ),
                      // ),
                    ),

                    // rangeHighlightColor: Colors.pink[200]!,
                  ),
                  headerStyle: HeaderStyle(
                    // centerHeaderTitle: true,
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
                  ),
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  rangeSelectionMode: RangeSelectionMode.toggledOn,
                  calendarBuilders: CalendarBuilders<dynamic>(
                    selectedBuilder: (context, date, events) => Container(
                      margin: const EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        // color: Theme.of(context).primaryColor,
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        date.day.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    todayBuilder: (context, date, events) => Container(
                      margin: const EdgeInsets.all(6),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        date.day.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const Divider(thickness: 3),
                const Divider(thickness: 3),
                Column(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? codeDialog;
  String? valueText;
  dynamic _displayTextInputDialog(
    BuildContext context,
    String heading,
    String collection_name,
  ) async {
    return showDialog<dynamic>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(heading),
          backgroundColor: Colors.pink[50],
          content: TextField(
            onChanged: (value) {
              setState(() {
                valueText = value;
              });
            },
            controller: _textFieldController,
            decoration: InputDecoration(hintText: 'Enter your ' + heading),
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
                setState(() {
                  Navigator.pop(context);
                });
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
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }
}
