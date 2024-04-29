import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:untitled/features/auth/forget/view/page/forget_page.dart';
import 'package:untitled/features/auth/registration/view/page/registration_page.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void onPressedButton(BuildContext context) {
    if (formKey.currentState!.validate()) {
      Navigator.pushNamed(context, 'home');
    }
  }

  void onPressedForget(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const ForgetPage()));
  }
  void onPressedCreate(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const RegistrationPage()));
  }
}