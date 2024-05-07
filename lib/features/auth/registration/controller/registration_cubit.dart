import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/utils/snakeBar.dart';

part 'registration_state.dart';

class RegistrationCubit extends Cubit<RegistrationState> {
  RegistrationCubit() : super(RegistrationInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController firstController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Future<void> onPressedButton(BuildContext context) async {
    if ((formKey.currentState!.validate())) {
     if (passwordController.text == confirmPasswordController.text) {
          try {
            await registerUser();
            Navigator.popAndPushNamed(context, 'login');
          } on FirebaseAuthException catch (ex) {
            if (ex.code == 'weak-password') {
              showSnackBar(context, ex.message!);
            } else if (ex.code == 'email-already-in-use') {
              showSnackBar(context, 'Email is already exist');
            }
          }on Exception catch (ex) {
            showSnackBar(context, ex.toString());
          }
      }
    else{
        showSnackBar(context,'Password does not match');
  }
  }
  }

  void onTapAlready(BuildContext context) {
    Navigator.popAndPushNamed(context, 'login');
  }

  Future<void> registerUser() async {
    UserCredential user =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }
}
