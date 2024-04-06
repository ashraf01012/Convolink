import 'package:flutter/material.dart';
import 'package:untitled/features/auth/forget/view/components/forget_body_widget.dart';
import 'package:untitled/features/auth/login/view/page/login_page.dart';
class ForgetPage extends StatelessWidget {
  const ForgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LogInPage()));
          },
        ),
      ),
      body: ForgetBodyWidget(),

    );
  }
}
