// import 'package:atsign_location_app/presentation/routes/router.gr.dart';
// import 'package:atsign_location_app/presentation/splash/splash_widgets/on_boarding/app_styles.dart';
// import 'package:atsign_location_app/presentation/splash/splash_widgets/on_boarding/widgets/buttons/my_text_button.dart';
// import 'package:atsign_location_app/presentation/splash/splash_widgets/on_boarding/widgets/buttons/onboard_nav_btn.dart';
// import 'package:atsign_location_app/presentation/splash/splash_widgets/on_boarding/widgets/onboard_data.dart';
// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';

// class OnBoardingPage extends StatefulWidget {
//   const OnBoardingPage({Key? key}) : super(key: key);

//   @override
//   _OnBoardingPageState createState() => _OnBoardingPageState();
// }

// class _OnBoardingPageState extends State<OnBoardingPage> {
//   int currentPage = 0;

//   final PageController _pageController = PageController();

//   AnimatedContainer dotIndicator(int index) {
//     return AnimatedContainer(
//       margin: const EdgeInsets.only(right: 5),
//       duration: const Duration(milliseconds: 400),
//       height: 12,
//       width: 12,
//       decoration: BoxDecoration(
//         color: currentPage == index ? kPrimaryColor : kSecondaryColor,
//         shape: BoxShape.circle,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     // initialize size config
//     SizeConfig().init(context);
//     final sizeV = SizeConfig.blockSizeV!;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               flex: 9,
//               child: PageView.builder(
//                 physics: const BouncingScrollPhysics(),
//                 controller: _pageController,
//                 onPageChanged: (value) {
//                   setState(() {
//                     currentPage = value;
//                   });
//                 },
//                 itemCount: onboardingContents.length,
//                 itemBuilder: (context, index) => Column(
//                   children: [
//                     SizedBox(
//                       height: sizeV * 5,
//                     ),
//                     Text(
//                       onboardingContents[index].title,
//                       style: kTitle,
//                       textAlign: TextAlign.center,
//                     ),
//                     SizedBox(
//                       height: sizeV * 5,
//                     ),
//                     SizedBox(
//                       height: sizeV * 50,
//                       child: Image.asset(
//                         onboardingContents[index].image,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                     SizedBox(
//                       height: sizeV * 5,
//                     ),
//                     RichText(
//                       textAlign: TextAlign.center,
//                       text: TextSpan(
//                         style: kBodyText1,
//                         children: const [
//                           TextSpan(text: 'WE CAN '),
//                           TextSpan(
//                             text: 'HELP YOU ',
//                             style: TextStyle(
//                               color: kPrimaryColor,
//                             ),
//                           ),
//                           TextSpan(text: 'TO BE A BETTER '),
//                           TextSpan(text: 'VERSION OF '),
//                           TextSpan(
//                             text: 'YOURSELF ',
//                             style: TextStyle(
//                               color: kPrimaryColor,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: sizeV * 5,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Expanded(
//               // flex: 1,
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16),
//                 child: Column(
//                   children: [
//                     if (currentPage == onboardingContents.length - 1)
//                       Expanded(
//                         child: MyTextButton(
//                           buttonName: 'Get Started',
//                           onPressed: () {
//                             AutoRouter.of(context).replace(
//                               const AtSignOnBoardingPageRoute(),
//                             );
//                           },
//                           bgColor: kPrimaryColor,
//                         ),
//                       )
//                     else
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           OnBoardNavBtn(
//                             name: 'Skip',
//                             onPressed: () {
//                               AutoRouter.of(context).replace(
//                                 const AtSignOnBoardingPageRoute(),
//                               );
//                             },
//                           ),
//                           Row(
//                             children: List.generate(
//                               onboardingContents.length,
//                               dotIndicator,
//                             ),
//                           ),
//                           OnBoardNavBtn(
//                             name: 'Next',
//                             onPressed: () {
//                               _pageController.nextPage(
//                                 duration: const Duration(milliseconds: 400),
//                                 curve: Curves.easeInOut,
//                               );
//                             },
//                           )
//                         ],
//                       ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
