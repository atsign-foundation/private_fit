import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:private_fit/application/bloc/sign_in_bloc.dart';
import 'package:private_fit/injections.dart';

class LoginView extends HookWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _atsignTextEditingController = useTextEditingController();
    return BlocConsumer<SignInBloc, SignInState>(
      bloc: getIt<SignInBloc>(),
      listener: (context, state) {},
      builder: (context, state) {
        return const Scaffold(
          body: Center(
            child: AutoSizeText('login'),
          ),
        );
      },
    );
  }
}
