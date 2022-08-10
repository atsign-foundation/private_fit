import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:private_fit/application/bloc/sign_in_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/presentation/routes/router.gr.dart';

class LoginScreenPage extends StatelessWidget {
  const LoginScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInBloc>(
      create: (context) => getIt<SignInBloc>()
        ..add(
          const SignInEvent.started(),
        ),
      child: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          state.onboarded.fold(() => null, (a) {
            if (a == true) {
              AutoRouter.of(context).replace(const LoadingScreenRoute());
            } else {
              AutoRouter.of(context).replace(const ErrorOboardingRoute());
            }
          });
        },
        builder: (context, state) {
          return const Scaffold(
            backgroundColor: Colors.white,
            body: Center(child: CupertinoActivityIndicator()),
          );
        },
      ),
    );
  }
}
