import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  GlobalKey<FormState> formKey=GlobalKey<FormState>();
  void onPressedButton(BuildContext context){
    if(formKey.currentState!.validate()){
      Navigator.pushNamed(context, 'home');
    }
  }
}
