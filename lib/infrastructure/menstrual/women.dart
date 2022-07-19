// ignore_for_file: unused_local_variable

import 'dart:math' as math;
import 'dart:convert';

void main() {
  DateTime _addDays(DateTime dates, Duration days) {
    final d = dates.add(days);
    // d = d + days;
    return d;
    // d.add(Duration( milliseconds:  d.millisecondsSinceEpoch+days));
    // d.se
  }

  var periodCycleDays = 28;
  var bleedingDays = 3;
  var fertilePhaseStart = periodCycleDays - 20;
  var fertilePhaseEnd = periodCycleDays - 11;
  var ovulation =
      (fertilePhaseStart - 1) + (fertilePhaseEnd - fertilePhaseStart) / 2;

  var periodStartDate = DateTime(2022, 6, 28);
// var periodStartDate =
  void createEventForDate(Duration date) {
    var timeBetween =
        (date.inDays - periodStartDate.millisecondsSinceEpoch).abs();
    var daysBetween = timeBetween / (1000 * 60 * 60 * 24);
    var circleBetween = timeBetween / periodCycleDays.floor();

    var events;

    for (int t = 0; t < 12; t++) {
      final cycleDaysBetween = periodCycleDays * (circleBetween + t);

      var p =
          _addDays(periodStartDate, Duration(days: cycleDaysBetween.toInt()));
      var bleedingEnd = _addDays(p, Duration(days: bleedingDays));
      var fertilePhaseStartDate =
          _addDays(p, Duration(days: fertilePhaseStart));
      var fertilePhaseEndDate = _addDays(p, Duration(days: fertilePhaseEnd));
      var ovulationDayStart = _addDays(p, Duration(days: ovulation.toInt()));

      // var ovulationDayEnd = DateTime(ovulationDayStart);
      // print('The period is P $p');
      print('The period start date is  $periodStartDate');
      print('The bleeding will end on  bleedingEnd $bleedingEnd');
      print('The ovulation Day Start on ovulationDayStart $ovulationDayStart');
      print(
          'fertilePhaseEndDate start fertilePhaseEndDate $fertilePhaseEndDate');
    }
  }

  for (int i = 0; i < 1; i++) {
    print('hello ${i + 1}');
    // createEventForDate(Duration(days: periodStartDate));
  }
  createEventForDate(Duration(days: periodStartDate.millisecondsSinceEpoch));
}

class women {
  // int periodCycleDays = 28;
  // int bleedingDays = 3;
  // int fertilePhaseStart = periodCycleDays - 20;
  // int fertilePhaseEnd = periodCycleDays - 11;
  // int ovulation =
  //     (fertilePhaseStart - 1) + (fertilePhaseEnd - fertilePhaseStart) / 2;

}
