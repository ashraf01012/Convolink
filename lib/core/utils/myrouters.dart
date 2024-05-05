import 'package:flutter/material.dart';
import 'package:untitled/features/auth/admin/view/page/admin_page.dart';
import 'package:untitled/features/auth/forget/view/page/forget_page.dart';
import 'package:untitled/features/auth/home/view/page/home_page.dart';
import 'package:untitled/features/auth/login/view/page/login_page.dart';
import 'package:untitled/features/auth/onboarding/view/page/onboarding_page.dart';
import 'package:untitled/features/auth/registration/view/page/registration_page.dart';

class MyRoutes {
  static List<Route> initRoutes = [
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => const LogInPage(),
    ),
  ];
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
      // final List data = settings.arguments as List;
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const LogInPage(),
        );
      case 'registration':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const RegistrationPage(),
        );
      case 'home':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const HomePage(),
        );
      case 'forget':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const ForgetPage(),
        );
      case 'admin':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const AdminPage(),
        );
      default:
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const OnboardingPage(),
        );
    }
  }
}