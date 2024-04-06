import 'package:flutter/material.dart';
import 'package:untitled/features/auth/login/view/components/login_body_widget.dart';
import 'package:untitled/features/auth/login/view/components/login_bottom_widget.dart';
class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:LogInBodyWidget(),
      bottomNavigationBar: const SizedBox(
          height: 100,
          child: LogInBottomWidget(),
      ),
    );
  }
}
