import 'package:auto_route/annotations.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/presentation/home/home_page.dart';
import 'package:private_fit/presentation/on_boarding/on_boarding_page.dart';

/*
Using Auto route helps a lot in  navigation it allows for strongly-typed
arguments passing , effortless deep-linking and is uses code generation to
simplify routes setup

This will eliminated the boilerplate and a need to to use named/generated
routes and you’ll end up writing a lot of boilerplate code for mediator argument
classes, checking for required arguments, extracting arguments and a bunch of 
other stuff. AutoRoute does all that for you and much more.
*/
@singleton
@CupertinoAutoRouter(
  routes: <AutoRoute>[
    // AutoRoute<dynamic>(page: OnBoarding),

    AutoRoute<dynamic>(page: HomePage),
    AutoRoute<dynamic>(page: OnBoardingPage, initial: true),
  ],
)
class $Router {}
