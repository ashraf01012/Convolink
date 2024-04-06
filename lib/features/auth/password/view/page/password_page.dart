import 'package:flutter/material.dart';
import 'package:untitled/features/auth/forget/view/page/forget_page.dart';
import 'package:untitled/features/auth/password/view/components/password_body_widget.dart';

class PasswordPage extends StatelessWidget {
  const PasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
             onPressed: () {
               Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ForgetPage()));
             },
          ),

        backgroundColor: Colors.amber,
      ),
      body: PasswordBodyWidget(),
    );
  }
}
