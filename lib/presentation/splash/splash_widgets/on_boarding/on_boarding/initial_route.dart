import 'package:flutter/material.dart';
import 'package:private_fit/presentation/on_boarding/on_boarding_page.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/on_boarding/splash_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late bool newLaunch = true;

  @override
  void initState() {
    loadNewLaunch();
    super.initState();
  }

  Future<void> loadNewLaunch() async {
    await SharedPreferences.getInstance().then((value) {
      setState(() {
        final _newLaunch = value.getBool('newLaunch') ?? true;
        newLaunch = _newLaunch;
      });
    });
  }

//todo(kzawadi): refactor and make changes to make sure we dont show
//todo(kzawadi): the splash screen if the user has already onboarded an atsign
  @override
  Widget build(BuildContext context) {
    return newLaunch ? const SplashPage() : const OnBoardingPage();
  }
}
