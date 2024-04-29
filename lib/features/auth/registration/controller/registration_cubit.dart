import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:untitled/features/auth/login/view/page/login_page.dart';

part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit() : super(RegistrationInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();
  TextEditingController firstController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  void onPressedButton(BuildContext context){
    if((formKey.currentState!.validate())&&(passwordController.text==confirmPasswordController.text)){
      Navigator.pushNamed(context, 'home');
    }
  }
  void onTapAlready(BuildContext context) {
    Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>const LogInPage()));
  }
}
