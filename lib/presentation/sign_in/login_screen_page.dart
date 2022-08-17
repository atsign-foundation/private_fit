import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:private_fit/application/bloc/sign_in_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/presentation/components/toast.dart';
import 'package:private_fit/presentation/routes/router.gr.dart';

class LoginScreenPage extends StatelessWidget {
  const LoginScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    return BlocProvider<SignInBloc>(
      create: (context) => getIt<SignInBloc>()
        ..add(
          const SignInEvent.started(),
        ),
      child: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state.showErrorMessages) {
            showToast(
              _scaffoldKey.currentContext,
              state.saveFailureOrSuccessOption.fold(
                () => '',
                (a) {
                  AutoRouter.of(context).replace(const LoginViewRoute());

                  return a.maybeWhen(
                    serverError: () =>
                        'Failed to fetching an atsign; OnBoard again',
                    orElse: () => 'Close the app and try again later',
                  );
                },
              ),
              // isError: false,
            );
          }
          state.onboarded.fold(() => null, (a) {
            if (a == true) {
              AutoRouter.of(context).replace(const LoadingScreenRoute());
            } else {
              AutoRouter.of(context).replace(const ErrorOboardingRoute());
            }
          });
        },
        builder: (context, state) {
          return Scaffold(
            key: _scaffoldKey,
            backgroundColor: Colors.white70,
            body: const Center(child: CupertinoActivityIndicator()),
          );
        },
      ),
    );
  }
}
