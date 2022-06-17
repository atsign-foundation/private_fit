// import 'package:atsign_location_app/application/location/bloc/location_bloc.dart';
// import 'package:atsign_location_app/application/on_boarding/bloc/on_boarding_bloc.dart';
// import 'package:atsign_location_app/application/side_drawer/cubit/drawer_cubit.dart';
// import 'package:atsign_location_app/injections.dart';
// import 'package:atsign_location_app/presentation/on_boarding/on_boarding_form.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class OnBoarding extends StatelessWidget {
//   const OnBoarding({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final navKey = AutoRouter.of(context).navigatorKey;

//     return MultiBlocProvider(
//       providers: [
//         BlocProvider<OnBoardingBloc>(
//           create: (context) => getIt<OnBoardingBloc>()
//             ..add(
//               const OnBoardingEvent.onBoardingAtSign(),
//             ),
//         ),
//         BlocProvider<LocationBloc>(
//           // lazy: false,
//           create: (context) => getIt<LocationBloc>()
//             ..add(
//               LocationEvent.started(navKey),
//             ),
//         ),
//         BlocProvider<DrawerCubit>(
//           // lazy: false,
//           create: (context) => getIt<DrawerCubit>(),
//         ),
//       ],
//       child: const OnBoardingForm(),
//     );
//   }
// }
