import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/features/auth/login/view/page/login_page.dart';
import 'package:untitled/features/auth/registration/controller/registration_cubit.dart';
class RegistrationBottomWidget extends StatelessWidget {
  const RegistrationBottomWidget({super.key, required this.controller});
  final RegistrationCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: controller,
        child: BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
      RegistrationCubit controller =context.read<RegistrationCubit>();
      return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: (){
              _navigateToLogIn(context);
            },
            child: const Text(
              'I already have an account ',
            ),
          ),
        ],
      ),
    );
        }
    ),
    );
  }
  void _navigateToLogIn(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LogInPage()));
  }
}
