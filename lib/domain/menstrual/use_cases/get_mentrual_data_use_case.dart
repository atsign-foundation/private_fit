import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/menstrual/i_menstrual_facade.dart';
import 'package:private_fit/domain/menstrual/menstrual_data_model.dart';
import 'package:private_fit/domain/menstrual/value_objects.dart';

@lazySingleton
class GetMenstrualDataUseCase {
  GetMenstrualDataUseCase(this._iMenstrualFacade);

  final IMenstrualFacade _iMenstrualFacade;

  Future<Option<MenstrualDataModel>> call() async {
    return _iMenstrualFacade.getMenstraulData().then(
      (value) {
        return value.fold(
          none,
          (a) {
            DateTime _addDays(DateTime dates, Duration days) => dates.add(days);

            final fertilePhaseStart = a.periodCycleDays - 20;
            final fertilePhaseEnd = a.periodCycleDays - 11;
            final ovulation = (fertilePhaseStart - 1) +
                (fertilePhaseEnd - fertilePhaseStart) / 2;

            final periodStartDate = a.periodStartDate.getOrCrash();

            // void createEventForDate() {
            final timeBetween =
                (Duration(days: periodStartDate.millisecondsSinceEpoch).inDays -
                        periodStartDate.millisecondsSinceEpoch)
                    .abs();
            final daysBetween = timeBetween / (1000 * 60 * 60 * 24);
            final circleBetween = timeBetween / a.periodCycleDays.floor();

            var events;
            late DateTime _fertilePhaseStartDate;
            late DateTime _fertilePhaseEndDate;
            late DateTime _ovulationDayStart;
            late DateTime _nextPeriod;
            for (int t = 0; t < 1; t++) {
              final cycleDaysBetween = a.periodCycleDays * (circleBetween + t);

              _nextPeriod = _addDays(
                periodStartDate,
                Duration(
                  days: cycleDaysBetween.toInt(),
                ),
              );
              final bleedingEnd =
                  _addDays(_nextPeriod, Duration(days: a.bleedingDays));
              _fertilePhaseStartDate =
                  _addDays(_nextPeriod, Duration(days: fertilePhaseStart));
              _fertilePhaseEndDate =
                  _addDays(_nextPeriod, Duration(days: fertilePhaseEnd));
              _ovulationDayStart =
                  _addDays(_nextPeriod, Duration(days: ovulation.toInt()));

              // var ovulationDayEnd = DateTime(ovulationDayStart);
              print('The period is P $_nextPeriod');
              print('The period start date is  $periodStartDate');
              print('The bleeding will end on  bleedingEnd $bleedingEnd');
              print(
                'The ovulation Day Start on ovulationDayStart $_ovulationDayStart',
              );
              print(
                'fertilePhaseEndDate start fertilePhaseEndDate $_fertilePhaseEndDate',
              );
            }

            return optionOf(
              MenstrualDataModel(
                periodStartDate: PeriodStartDate(_nextPeriod),
                bleedingDays: a.bleedingDays,
                fertilephaseEnd: _fertilePhaseEndDate,
                fertilephaseStart: _fertilePhaseStartDate,
                ovulation: _ovulationDayStart,
                periodCycleDays: a.periodCycleDays,
              ),
            );
          },
        );
      },
    );

    // createEventForDate(Duration(days: periodStartDate.millisecondsSinceEpoch));
  }
}
