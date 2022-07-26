// // ignore_for_file: unused_local_variable

// void main() {
//   DateTime _addDays(DateTime dates, Duration days) {
//     final d = dates.add(days);
//     // d = d + days;
//     return d;
//     // d.add(Duration( milliseconds:  d.millisecondsSinceEpoch+days));
//     // d.se
//   }

//   const periodCycleDays = 28;
//   const bleedingDays = 3;
//   const fertilePhaseStart = periodCycleDays - 20;
//   const fertilePhaseEnd = periodCycleDays - 11;
//   const ovulation =
//       (fertilePhaseStart - 1) + (fertilePhaseEnd - fertilePhaseStart) / 2;

//   final periodStartDate = DateTime(2022, 6, 28);
// // var periodStartDate =
//   void createEventForDate(Duration date) {
//     final timeBetween =
//         (date.inDays - periodStartDate.millisecondsSinceEpoch).abs();
//     final daysBetween = timeBetween / (1000 * 60 * 60 * 24);
//     final circleBetween = timeBetween / periodCycleDays.floor();

//     var events;

//     for (int t = 0; t < 12; t++) {
//       final cycleDaysBetween = periodCycleDays * (circleBetween + t);

//       final p =
//           _addDays(periodStartDate, Duration(days:
// cycleDaysBetween.toInt()));
//       final bleedingEnd = _addDays(p, const Duration(days: bleedingDays));
//       final fertilePhaseStartDate =
//           _addDays(p, const Duration(days: fertilePhaseStart));
//       final fertilePhaseEndDate =
//           _addDays(p, const Duration(days: fertilePhaseEnd));
//       final ovulationDayStart = _addDays(p, Duration(days: ovulat
// ion.toInt()));

//       // var ovulationDayEnd = DateTime(ovulationDayStart);
//       // print('The period is P $p');
//       print('The period start date is  $periodStartDate');
//       print('The bleeding will end on  bleedingEnd $bleedingEnd');
//       print('The ovulation Day Start on ovulationDayStart $ovulationD
// ayStart');
//       print(
//           'fertilePhaseEndDate start fertilePhaseEndDate $fertil
// ePhaseEndDate');
//     }
//   }

//   for (int i = 0; i < 1; i++) {
//     print('hello ${i + 1}');
//     // createEventForDate(Duration(days: periodStartDate));
//   }
//   createEventForDate(Duration(days: periodStartDate.millisecondsSinceEpoch));
// }

// class women {
//   // int periodCycleDays = 28;
//   // int bleedingDays = 3;
//   // int fertilePhaseStart = periodCycleDays - 20;
//   // int fertilePhaseEnd = periodCycleDays - 11;
//   // int ovulation =
//   //     (fertilePhaseStart - 1) + (fertilePhaseEnd - fertilePhaseStart) / 2;

// }
