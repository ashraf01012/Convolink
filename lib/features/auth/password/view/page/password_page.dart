import 'package:flutter/material.dart';
import 'package:untitled/features/auth/forget/view/page/forget_page.dart';
import 'package:untitled/features/auth/password/view/components/password_body_widget.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueGrey[200],
      body: PasswordBodyWidget(),
    );
  }
}
