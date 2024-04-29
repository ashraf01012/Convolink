import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:untitled/features/auth/login/view/page/login_page.dart';
import 'package:untitled/features/auth/password/view/page/password_page.dart';

part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit() : super(VerificationInitial());
  TextEditingController pinCodeController = TextEditingController();
  final String validCode = '22222';
  void onTapContinue(BuildContext context) {
    if (pinCodeController.text == validCode) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const PasswordPage()));
    }
  }
  void onTapCancel(BuildContext context) {
    Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>const LogInPage()));
  }
}
