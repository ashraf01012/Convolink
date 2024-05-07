import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/utils/snakeBar.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState>  {
  LoginCubit() : super(LoginInitial());
  bool isLoading =false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String radioValueController = '';
  final _adminPassword = 'admin11111';
  final _adminUser = 'admin1@gmail.com';
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Future<void> onPressedButton(BuildContext context) async {
    if (formKey.currentState!.validate()) {
        formKey.currentState!.save();
        if(passwordController.text==_adminPassword && emailController.text==_adminUser){
        try{
          await loginUser();
          Navigator.pushNamed(context, 'admin');
        }on FirebaseAuthException catch(ex){
          showSnackBar(context, 'your password is wrong');
        }
      }else{
      try{
      await loginUser();
      Navigator.popAndPushNamed(context, 'home',arguments: emailController.text);
    } on FirebaseAuthException catch (ex){

          showSnackBar(context,'Invalid email or password');

      }on PlatformException catch (ex) {
        showSnackBar(context,'Something  wrong !');
      }
      }
    }
    }


  void onPressedForget(BuildContext context) {
    Navigator.pushNamed(context, 'forget');
  }
  void onPressedCreate(BuildContext context) {
    Navigator.pushNamed(context, 'registration');
  }
  Future<void> loginUser() async {
    UserCredential user = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: emailController.text, password: passwordController.text);
  }

}