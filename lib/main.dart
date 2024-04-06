import 'package:flutter/material.dart';
import 'features/auth/login/view/page/login_page.dart';

void main() {

  MaterialApp materialApp = const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInPage(),
    );
  runApp(materialApp);
}