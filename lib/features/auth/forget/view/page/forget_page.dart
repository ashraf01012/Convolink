import 'package:flutter/material.dart';
import 'package:untitled/features/auth/forget/view/components/forget_body_widget.dart';
class ForgetPage extends StatelessWidget {
  const ForgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.blueGrey[200],
      body: ForgetBodyWidget(),

    );
  }
}
