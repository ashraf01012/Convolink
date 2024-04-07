import 'package:flutter/material.dart';
import 'package:untitled/features/auth/registration/view/components/registration_body_widget.dart';
import 'package:untitled/features/auth/registration/view/components/registration_bottom_widget.dart';
//regestration page
class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});
//wellcome
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
          child: RegistrationBodyWidget(),
      ),
      bottomNavigationBar: const SizedBox(
        height: 150,
        child: RegistrationBottomWidget(),
      ),
    );
  }
}
