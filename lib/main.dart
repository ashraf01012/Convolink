import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/features/auth/registration/view/page/registration_page.dart';
import 'features/auth/login/view/page/login_page.dart';
import 'features/auth/onboarding/view/page/onboarding_page.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();


  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

  bool onBoarding = sharedPreferences.getBool('onboarding')??false;

  MaterialApp materialApp = MaterialApp(
    debugShowCheckedModeBanner: false,
    builder: DevicePreview.appBuilder,
    useInheritedMediaQuery: true,
    onGenerateRoute: MyRoutes.onGenerateRoute,
    onGenerateInitialRoutes: (_) => MyRoutes.initRoutes,
  );
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => materialApp, // Wrap your app
    ),
  );
}
class MyRoutes {
  static List<Route> initRoutes = [
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => const LogInPage(),
    ),
  ];
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'login':
        final List data = settings.arguments as List;
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => LogInPage(),
        );
      case 'registration':
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const RegistrationPage(),
        );

      default:
        return MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const OnboardingPage(),
        );
    }
  }
}
