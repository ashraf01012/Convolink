import 'package:flutter/material.dart';
import 'package:untitled/features/auth/forget/view/page/forget_page.dart';
import 'package:untitled/features/auth/login/view/page/login_page.dart';
import 'package:untitled/features/auth/verification/view/components/verify_body_widget.dart';
import 'package:untitled/features/auth/verification/view/components/verify_bottom_widget.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
          ),
          onPressed: (){
            _navigateToLogIn(context);
          },
        ),
        backgroundColor: Colors.amber,
      ),
      body: VerifyBodyWidget(),
      bottomNavigationBar: const SizedBox(
        height: 100,
        child: VerifyBottomWidget(),
      ),
    );
  }
  void _navigateToLogIn(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ForgetPage()));
  }
}
