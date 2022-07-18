import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart'
    show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';

class Calender extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalenderState();
  }
}

class _CalenderState extends State<Calender> {
  late DateTime _currentDate;
  EventList<Event> _markedDatesMap = EventList<Event>(
    events: {},
  );

  Widget _bleeding(String day) => Container(
        decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(1200))),
//    padding: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 5.0),
        child: Center(
          child: Text(
            day,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    double cHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(title: const Text("Calender"), actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.push<dynamic>(
                  context,
                  MaterialPageRoute<dynamic>(
                      builder: (context) => CalenderIcons()));
            },
            child: const Icon(
              Icons.info,
              color: Color(0xffE7CFFF),
            ),
            // style: ,      label: Text("")
          )
        ]),
        body: Container(
          child: CalendarCarousel<Event>(
            onDayPressed: (DateTime date, List<Event> events) {
              setState(() => _currentDate = date);
              _markedDatesMap.add(
                  date,
                  Event(
                      date: date,
                      title: "Bled",
                      icon: _bleeding(date.day.toString())));
            },
            iconColor: const Color(0xff4d004d),
            headerTextStyle: const TextStyle(
                color: Color(0xff4d004d),
                fontSize: 18,
                fontWeight: FontWeight.bold),
            height: cHeight * 0.8,
            todayButtonColor: Colors.blue,
            weekendTextStyle: const TextStyle(color: Colors.purpleAccent),
            markedDatesMap: _markedDatesMap,
            markedDateShowIcon: true,
            markedDateIconMaxShown: 1,
            markedDateMoreShowTotal: null,
            markedDateIconBuilder: (event) {
              return event.icon;
            },
          ),
        ));
  }
}

class CalenderIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Icons Legend")),
        body: Container(color: Colors.yellow));
  }
}
