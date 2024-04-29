import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:untitled/core/utils/validation.dart';
import 'package:untitled/features/auth/login/view/page/login_page.dart';

part 'password_state.dart';

class PasswordCubit extends Cubit<PasswordState> {
  PasswordCubit() : super(PasswordInitial());
  TextEditingController passwordController =TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();
  void onTapSubmit(BuildContext context) {
    if ((passwordController.text == confirmPasswordController.text)&&((passwordController.text !='')||(confirmPasswordController.text !=''))&&ChatValidation().passwordValidate(passwordController.text)==null) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const LogInPage()));
    } else {
    }
  }

}
