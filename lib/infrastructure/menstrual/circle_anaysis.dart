import 'package:flutter/material.dart';

class CycleAnalysis extends StatefulWidget {
  const CycleAnalysis({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CycleAnalysisState();
  }
}

class _CycleAnalysisState extends State<CycleAnalysis> {
  Widget _displayAverageStat(String title, String number) {
    const TextStyle sub_heading_style = TextStyle(
        fontFamily: 'Montserrat', color: Color(0xff120023), fontSize: 17);
    List<String> tit = [];
    tit = title.split(' ');
    return Container(
      padding: const EdgeInsets.fromLTRB(5, 7, 5, 7),
      width: MediaQuery.of(context).size.width / 3.6,
      decoration: BoxDecoration(
        borderRadius: new BorderRadius.all(new Radius.circular(4)),
        color: const Color(0xffE7CFFF),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(
          tit[0],
          style: sub_heading_style,
          softWrap: true,
        ),
        Text(
          tit[1],
          style: sub_heading_style,
          softWrap: true,
        ),
        Text(
          number,
          style: const TextStyle(fontSize: 28, color: Colors.deepOrange),
        ),
        const Text('days'),
      ]),
    );
  }

  Widget notTrackingSymptoms() {
    return ListTile(
      contentPadding: const EdgeInsets.fromLTRB(5, 2, 5, 10),
      leading: const Icon(Icons.add_circle, color: Color(0xff4d004d), size: 46),
      title: const Text(
        "You haven't been tracking any symptoms. Start tracking your symptoms now",
      ),
      onTap: () => print('tapped'),
    );
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 16);
    const TextStyle title_style = TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 20,
        color: Color(0xff4d004d),
        fontWeight: FontWeight.bold);
    final TextStyle sub_heading_style =
        style.copyWith(color: const Color(0xff120023), fontSize: 17);
    const TextStyle paragraph = TextStyle(
        fontFamily: 'Montserrat', fontSize: 16, color: Colors.black87);

    return Scaffold(
        appBar: AppBar(title: const Text('Cycle Analysis')),
        body: Container(
            child: ListView(
          padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          children: [
            const Center(
              heightFactor: 1.5,
              child: Text(
                'Your cycle averages',
                style: title_style,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _displayAverageStat('Cycle Length', '20'),
                _displayAverageStat('Cycle Variation', '2.5'),
                _displayAverageStat('Period Length', '5'),
              ],
            ),
            const Center(
              heightFactor: 1.5,
              child: Text(
                'Your symptoms',
                style: title_style,
              ),
            ),
            notTrackingSymptoms(),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(24),
              color: const Color(0xff8731DC),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                onPressed: () => print('clicked'),
                child: Text('Download data as a CSV',
                    textAlign: TextAlign.center,
                    style: style.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
            const Center(
              child: Text(
                'Your History',
                style: title_style,
              ),
            )
          ],
        ),),);
  }
}

//defining cycle api

class Cycle {
  Cycle({
    required this.start,
    required this.end,
    required this.duration,
    required this.periodStart,
    required this.periodEnd,
    required this.fertilityStart,
    required this.fertilityEnd,
  });

  // Cycle.initial(
  //   DateTime start,
  //   DateTime end,
  //   int duration,
  //   DateTime periodStart,
  //   DateTime periodEnd,
  //   int fertilityStart,
  //   int fertilityEnd,
  // ) {
  //   start = DateTime(2022, 6, 28);
  //   end = DateTime(2022, 6, 30);
  //   duration = 28;
  //   periodStart = DateTime(2022, 6, 28);
  //   periodEnd = DateTime(2022, 6, 30);
  //   fertilityStart = duration - 20;
  //   fertilityEnd = duration - 11;
  // }
  DateTime start;
  DateTime end;
  int duration;
  DateTime periodStart;
  DateTime periodEnd;
  int fertilityStart;
  int fertilityEnd;
}
