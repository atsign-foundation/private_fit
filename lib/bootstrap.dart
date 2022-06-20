// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:developer';

import 'package:at_utils/at_utils.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/shared/constants.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      /// Load the environment variables from the .env file.
      /// Directly calls load from the dotenv package.
      await Constants.load();
      configureInjection(Environment.prod);
      AtSignLogger.root_level = 'all';

      await BlocOverrides.runZoned(
        () async {
          await SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
          ]).then(
            (value) async {
              await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge)
                  .then((value) {});
              return runApp(await builder());
            },
          );
        },
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
