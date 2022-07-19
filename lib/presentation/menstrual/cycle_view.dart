// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:table_calendar/table_calendar.dart';

// class MyCycles extends StatefulWidget {
//   const MyCycles({super.key});

//   _MyCycleState createState() => _MyCycleState();
// }

// class _MyCycleState extends State<MyCycles> {
//   late CalendarController _controller;
//   DateFormat formatter = DateFormat('yyyy-MM-dd');
//   TextEditingController _textFieldController = TextEditingController();
//   // final List<Widget> _children = [Community(), MyCycles(), AboutUs()];
//   bool _initialized = false;
//   bool _error = false;

//   @override
//   void initState() {
//     super.initState();
//     _controller = CalendarController();
//     // _getPeriodData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // actions: [
//         //   SizedBox(
//         //     height: 100,
//         //     width: 80,
//         //     child: IconButton(
//         //         icon: Image.asset('assets/logo.png'), onPressed: () => {},),
//         //   ),
//         // ],
//         title: const Text(
//           'My Cycles',
//           style: TextStyle(fontSize: 30),
//         ),
//         backgroundColor: Colors.pink[900],
//         centerTitle: true,
//         elevation: 5,
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: const Alignment(-1, 0),
//               end: const Alignment(1, 0),
//               stops: const [
//                 0.0,
//                 0.1,
//                 0.1,
//                 0.2,
//                 0.2,
//                 0.3,
//                 0.3,
//                 0.4,
//                 0.4,
//                 0.5,
//                 0.5,
//                 0.6,
//                 0.6,
//                 0.7,
//                 0.7,
//                 0.8,
//                 0.8,
//                 0.9,
//                 0.9,
//                 1
//               ],
//               colors: [
//                 Colors.pink[100]!,
//                 Colors.pink[100]!,
//                 Colors.pink[50]!,
//                 Colors.pink[50]!,
//                 Colors.pink[100]!,
//                 Colors.pink[100]!,
//                 Colors.pink[50]!,
//                 Colors.pink[50]!,
//                 Colors.pink[100]!,
//                 Colors.pink[100]!,
//                 Colors.pink[50]!,
//                 Colors.pink[50]!,
//                 Colors.pink[100]!,
//                 Colors.pink[100]!,
//                 Colors.pink[50]!,
//                 Colors.pink[50]!,
//                 Colors.pink[100]!,
//                 Colors.pink[100]!,
//                 Colors.pink[50]!,
//                 Colors.pink[50]!,
//               ],
//               tileMode: TileMode.repeated,
//             ),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               TableCalendar(
//                 initialCalendarFormat: CalendarFormat.month,
//                 weekendDays: [],
//                 startDay: DateTime(2020),
//                 endDay: DateTime(2025),
//                 calendarStyle: CalendarStyle(
//                   unavailableStyle: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   weekendStyle: TextStyle(
//                     color: Colors.pink[900],
//                     fontSize: 20,
//                     fontWeight: FontWeight.w900,
//                   ),
//                   outsideStyle: TextStyle(color: Colors.pink[900]),
//                   outsideWeekendStyle: TextStyle(color: Colors.pink[900]),
//                   weekdayStyle: TextStyle(
//                     color: Colors.pink[900],
//                     fontSize: 20,
//                     fontWeight: FontWeight.w900,
//                   ),
//                   todayColor: Colors.pink[900],
//                   // selectedColor: Theme.of(context).primaryColor,
//                   todayStyle: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 20,
//                     color: Colors.white,
//                   ),
//                 ),
//                 headerStyle: HeaderStyle(
//                   centerHeaderTitle: true,
//                   titleTextStyle: const TextStyle(
//                     color: Colors.black,
//                     fontWeight: FontWeight.bold,
//                     letterSpacing: 1,
//                     fontSize: 22,
//                   ),
//                   formatButtonDecoration: BoxDecoration(
//                     color: Colors.pink[900],
//                     borderRadius: BorderRadius.circular(22),
//                   ),
//                   formatButtonTextStyle: const TextStyle(
//                     color: Colors.white,
//                   ),
//                   formatButtonShowsNext: false,
//                 ),
//                 startingDayOfWeek: StartingDayOfWeek.monday,
//                 onDaySelected: (date, events, _) {
//                   print(date.toUtc());
//                 },
//                 builders: CalendarBuilders(
//                   selectedDayBuilder: (context, date, events) => Container(
//                     margin: const EdgeInsets.all(5),
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       // color: Theme.of(context).primaryColor,
//                       color: Colors.pink[900],
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Text(
//                       date.day.toString(),
//                       style: const TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   todayDayBuilder: (context, date, events) => Container(
//                     margin: const EdgeInsets.all(5),
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       color: Colors.pink[900],
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Text(
//                       date.day.toString(),
//                       style: const TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//                 calendarController: _controller,
//               ),
//               const Divider(),
//               const Divider(),
//               Column(
//                 children: [
//                   Row(
//                     children: <Widget>[
//                       SizedBox(
//                         height: 50,
//                         width: 300,
//                         child: Padding(
//                           padding: const EdgeInsets.fromLTRB(100, 0, 40, 10),
//                           child: Text(
//                             'Add Period',
//                             style: TextStyle(
//                               fontSize: 28,
//                               color: Colors.pink[900],
//                               fontWeight: FontWeight.bold,
//                               fontFamily: 'Poppins',
//                             ),
//                           ),
//                         ),
//                       ),
//                       const Divider(),
//                       SizedBox(
//                         child: FloatingActionButton(
//                           onPressed: () {
//                             // Navigator.push(
//                             //   context,
//                             //   MaterialPageRoute(
//                             //       builder: (context) => AddPeriod(),),
//                             // );
//                           },
//                           backgroundColor: Colors.pink[900],
//                           child: Icon(Icons.add, color: Colors.pink[100]),
//                         ),
//                       )
//                     ],
//                   ),
//                   const Divider(),
//                   Row(
//                     children: <Widget>[
//                       SizedBox(
//                         height: 60,
//                         width: 392,
//                         child: Padding(
//                           padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
//                           child: TextButton(
//                             style: ButtonStyle(
//                               backgroundColor: MaterialStateProperty.all<Color>(
//                                 Colors.pink[900]!,
//                               ),
//                             ),
//                             onPressed: () {
//                               _displayTextInputDialog(
//                                 context,
//                                 'Temperature',
//                                 'temperature',
//                               );
//                             },
//                             child: Text(
//                               'BODY TEMPERATURE',
//                               style: TextStyle(
//                                 color: Colors.pink[200],
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Divider(),
//                   Row(
//                     children: <Widget>[
//                       SizedBox(
//                         height: 60,
//                         width: 392,
//                         child: Padding(
//                           padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
//                           child: TextButton(
//                             style: ButtonStyle(
//                               backgroundColor: MaterialStateProperty.all<Color>(
//                                 Colors.pink[900]!,
//                               ),
//                             ),
//                             onPressed: () {
//                               _displayTextInputDialog(
//                                 context,
//                                 'Mood',
//                                 'mood',
//                               );
//                             },
//                             child: Text(
//                               'MOOD',
//                               style: TextStyle(
//                                 color: Colors.pink[200],
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Divider(),
//                   Row(
//                     children: <Widget>[
//                       SizedBox(
//                         height: 60,
//                         width: 392,
//                         child: Padding(
//                           padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
//                           child: TextButton(
//                             style: ButtonStyle(
//                               backgroundColor: MaterialStateProperty.all<Color>(
//                                 Colors.pink[900]!,
//                               ),
//                             ),
//                             onPressed: () {
//                               _displayTextInputDialog(
//                                 context,
//                                 'Weight',
//                                 'weight',
//                               );
//                             },
//                             child: Text(
//                               'WEIGHT',
//                               style: TextStyle(
//                                 color: Colors.pink[200],
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   String? codeDialog;
//   String? valueText;
//   dynamic _displayTextInputDialog(
//     BuildContext context,
//     String heading,
//     String collection_name,
//   ) async {
//     return showDialog<dynamic>(
//       context: context,
//       builder: (context) {
//         return AlertDialog(
//           title: Text(heading),
//           backgroundColor: Colors.pink[50],
//           content: TextField(
//             onChanged: (value) {
//               setState(() {
//                 valueText = value;
//               });
//             },
//             controller: _textFieldController,
//             decoration: InputDecoration(hintText: 'Enter your ' + heading),
//           ),
//           actions: <Widget>[
//             TextButton(
//               style: ButtonStyle(
//                 backgroundColor:
//                     MaterialStateProperty.all<Color>(Colors.pink[900]!),
//               ),
//               child: Text(
//                 'CANCEL',
//                 style: TextStyle(
//                   color: Colors.pink[50],
//                 ),
//               ),
//               onPressed: () {
//                 setState(() {
//                   Navigator.pop(context);
//                 });
//               },
//             ),
//             TextButton(
//               style: ButtonStyle(
//                 backgroundColor:
//                     MaterialStateProperty.all<Color>(Colors.pink[900]!),
//               ),
//               child: Text(
//                 'SUBMIT',
//                 style: TextStyle(
//                   color: Colors.pink[50],
//                 ),
//               ),
//               onPressed: () {
//                 // DateTime now = DateTime.now();
//                 // String dateValue = formatter.format(now);
//                 // FirebaseFirestore.instance.collection(collection_name).add({
//                 //   'Value': valueText,
//                 //   'Date': dateValue,
//                 // }).then((value) {
//                 //   print(value.id);
//                 // }).catchError((error) => print('Failed to add data: $error'));
//                 // setState(() {
//                 //   codeDialog = valueText;
//                 //   Navigator.pop(context);
//                 // });
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }


// class MenstrualView extends StatelessWidget {
//   const MenstrualView({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<MenstrualBloc, MenstrualState>(
//       bloc: getIt<MenstrualBloc>(),
//       listener: (context, state) {},
//       builder: (context, state) {
//         return Scaffold(
//           appBar: AppBar(
//             title: const Text(
//               'My Period',
//             ),
//             backgroundColor: Colors.pink[900],
//             centerTitle: true,
//             elevation: 5,
//           ),
//           body: SingleChildScrollView(
//             child: Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.height,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: const Alignment(-1.0, 0.0),
//                   end: const Alignment(1.0, 0.0),
//                   stops: const [
//                     0.0,
//                     0.1,
//                     0.1,
//                     0.2,
//                     0.2,
//                     0.3,
//                     0.3,
//                     0.4,
//                     0.4,
//                     0.5,
//                     0.5,
//                     0.6,
//                     0.6,
//                     0.7,
//                     0.7,
//                     0.8,
//                     0.8,
//                     0.9,
//                     0.9,
//                     1
//                   ],
//                   colors: [
//                     Colors.pink[100]!,
//                     Colors.pink[100]!,
//                     Colors.pink[50]!,
//                     Colors.pink[50]!,
//                     Colors.pink[100]!,
//                     Colors.pink[100]!,
//                     Colors.pink[50]!,
//                     Colors.pink[50]!,
//                     Colors.pink[100]!,
//                     Colors.pink[100]!,
//                     Colors.pink[50]!,
//                     Colors.pink[50]!,
//                     Colors.pink[100]!,
//                     Colors.pink[100]!,
//                     Colors.pink[50]!,
//                     Colors.pink[50]!,
//                     Colors.pink[100]!,
//                     Colors.pink[100]!,
//                     Colors.pink[50]!,
//                     Colors.pink[50]!,
//                   ],
//                   tileMode: TileMode.repeated,
//                 ),
//               ),
//               child: Container(
//                   child: Form(
//                 child: FormUI(),
//               )),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class FormUI extends StatefulWidget {
//   @override
//   _FormUIState createState() => _FormUIState();
// }

// class _FormUIState extends State<FormUI> {
//   final TextEditingController _textFieldController = TextEditingController();
//   DateTime currentDate = DateTime.now();
//   DateTime startDate = DateTime(
//     2021,
//     12,
//   );
//   DateFormat formatter = DateFormat('yyyy-MM-dd');
//   int duration = 0;
//   late int temp;
//   int cycleLength = 0;
//   int flow = 0;

//   dynamic _selectDate(BuildContext context) async {
//     DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: currentDate,
//       firstDate: DateTime(2015),
//       lastDate: DateTime(2050),
//       builder: (BuildContext context, Widget? child) {
//         return Theme(
//           data: ThemeData.dark().copyWith(
//             colorScheme: ColorScheme.dark(
//               primary: Colors.pink[900]!,
//               onPrimary: Colors.pink[100]!,
//               surface: Colors.pink[100]!,
//               onSurface: Colors.pink[900]!,
//             ),
//             dialogBackgroundColor: Colors.pink[100],
//           ),
//           child: child!,
//         );
//       },
//     );
//     if (pickedDate != null && pickedDate != currentDate) {
//       setState(() {
//         startDate = pickedDate;
//       });
//     }
//   }

//   // _displayTextInputDialog(BuildContext context, String heading) async {
//   //   await showDialog(
//   //       context: context,
//   //       builder: (context) {
//   //         return AlertDialog(
//   //           title: Text(heading),
//   //           backgroundColor: Colors.pink[50],
//   //           content: TextField(
//   //             onChanged: (value) {
//   //               setState(() {
//   //                 temp = int.parse(value);
//   //               });
//   //             },
//   //             controller: _textFieldController,
//   //             decoration: InputDecoration(hintText: "Enter your " + heading),
//   //           ),
//   //           actions: <Widget>[
//   //             TextButton(
//   //               style: ButtonStyle(
//   //                 backgroundColor:
//   //                     MaterialStateProperty.all<Color>(Colors.pink[900]),
//   //               ),
//   //               child: Text(
//   //                 'CANCEL',
//   //                 style: TextStyle(color: Colors.pink[50], fontFamily: 'Poppins'),
//   //               ),
//   //               onPressed: () {
//   //                 setState(() {
//   //                   Navigator.pop(context);
//   //                 });
//   //               },
//   //             ),
//   //             TextButton(
//   //               style: ButtonStyle(
//   //                 backgroundColor:
//   //                     MaterialStateProperty.all<Color>(Colors.pink[900]),
//   //               ),
//   //               child: Text('OK', style: TextStyle(color: Colors.pink[50], fontFamily: 'Poppins')),
//   //               onPressed: () {
//   //                 setState(() {
//   //                   if (heading == 'Duration') {
//   //                     duration = temp;
//   //                   } else if (heading == 'Cycle Length') {
//   //                     cycleLength = temp;
//   //                   } else if (heading == 'Flow') {
//   //                     flow = temp;
//   //                   } else {
//   //                     print('Invalid request.');
//   //                   }
//   //                   temp = 0;
//   //                   Navigator.pop(context);
//   //                 });
//   //               },
//   //             ),
//   //           ],
//   //         );
//   //       });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Material(
//           child: ListTile(
//             title: Text(
//               'Period Start',
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.pink[100],
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             subtitle: Text(
//               formatter.format(startDate),
//               style: TextStyle(
//                 fontSize: 30,
//                 color: Colors.pink[50],
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             tileColor: Colors.pink[900]!.withOpacity(0.7),
//             trailing: IconButton(
//               onPressed: () {
//                 _selectDate(context);
//               },
//               icon: Icon(
//                 Icons.calendar_view_day_rounded,
//                 color: Colors.pink[100],
//                 size: 40,
//               ),
//             ),
//           ),
//         ),
//         Material(
//           child: ListTile(
//             title: Text(
//               'Duration',
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.pink[100],
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             subtitle: Text(
//               duration.toString(),
//               style: TextStyle(
//                 fontSize: 30,
//                 color: Colors.pink[50],
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             tileColor: Colors.pink[900]!.withOpacity(0.7),
//             trailing: IconButton(
//               onPressed: () {
//                 // _displayTextInputDialog(context, 'Duration');
//               },
//               icon: Icon(
//                 Icons.calendar_view_month,
//                 color: Colors.pink[100],
//                 size: 40,
//               ),
//             ),
//           ),
//         ),
//         Material(
//           child: ListTile(
//             title: Text(
//               'Cycle Length',
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.pink[100],
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             subtitle: Text(
//               cycleLength.toString(),
//               style: TextStyle(
//                 fontSize: 30,
//                 color: Colors.pink[50],
//                 fontWeight: FontWeight.bold,
//                 fontFamily: 'Poppins',
//               ),
//             ),
//             tileColor: Colors.pink[900]!.withOpacity(0.7),
//             trailing: IconButton(
//               onPressed: () {
//                 // _displayTextInputDialog(context, 'Cycle Length');
//               },
//               icon: Icon(
//                 Icons.alarm,
//                 color: Colors.pink[100],
//                 size: 40,
//               ),
//             ),
//           ),
//         ),
//         Material(
//           child: ListTile(
//             title: Text(
//               'Flow',
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.pink[100],
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             subtitle: Text(
//               flow.toString(),
//               style: TextStyle(
//                 fontSize: 30,
//                 color: Colors.pink[50],
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             tileColor: Colors.pink[900]!.withOpacity(0.7),
//             trailing: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Container(
//                   width: 200,
//                   child: SliderTheme(
//                     data: SliderThemeData(
//                       thumbColor: Colors.pink[200],
//                       thumbShape:
//                           const RoundSliderThumbShape(enabledThumbRadius: 10),
//                     ),
//                     child: Slider(
//                       value: flow.toDouble(),
//                       min: 0,
//                       max: 10,
//                       divisions: 10,
//                       label: flow.round().toString(),
//                       activeColor: Colors.pink[50],
//                       inactiveColor: Colors.pink[100],
//                       onChanged: (double value) {
//                         setState(() {
//                           flow = value.round().toInt();
//                         });
//                       },
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   onPressed: () {
//                     // _displayTextInputDialog(context, 'Flow');
//                   },
//                   icon: Icon(
//                     Icons.water,
//                     color: Colors.pink[100],
//                     size: 40,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.fromLTRB(20, 20, 20, 40),
//           child: TextButton(
//             style: ButtonStyle(
//               backgroundColor:
//                   MaterialStateProperty.all<Color>(Colors.pink[900]!),
//             ),
//             onPressed: () {
//               // _sendData();
//             },
//             child: Text(
//               'Submit',
//               style: TextStyle(
//                 fontSize: 20,
//                 color: Colors.pink[100],
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
