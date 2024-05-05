import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'forget_state.dart';

class ForgetCubit extends Cubit<ForgetState> {
  ForgetCubit() : super(ForgetInitial());
  TextEditingController emailController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void onTapContinue(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.sendPasswordResetEmail(
          email: emailController.text,
        );
        showDialog(
            context: context,
            builder: (context) {
              return const AlertDialog(
                content: Text('Password reset link sent! check your email'),
              );
            });
      } on FirebaseAuthException catch (ex) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text(ex.message.toString()),
              );
            });
      }
    }
  }
}
