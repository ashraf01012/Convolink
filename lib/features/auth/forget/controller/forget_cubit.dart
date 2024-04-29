import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:untitled/core/utils/validation.dart';
import 'package:untitled/features/auth/verification/view/page/verification_page.dart';

part 'forget_state.dart';

class ForgetCubit extends Cubit<ForgetState> {
  ForgetCubit() : super(ForgetInitial());
  TextEditingController emailController =TextEditingController();
  void onTapContinue(BuildContext context) {
if(ChatValidation().emailValidate(emailController.text)==null){
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const VerificationPage()));
}
  }
}
