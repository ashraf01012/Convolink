import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'features/auth/login/view/page/login_page.dart';
import 'features/auth/onboarding/view/page/onboarding_page.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool onBoarding = sharedPreferences.getBool('onboarding')??false;
  MaterialApp materialApp =   const MaterialApp(
    debugShowCheckedModeBanner: false,
  //  home: onBoarding? const LogInPage():const OnboardingPage(),
    onGenerateRoute: generateRoute,

    );
  runApp(materialApp);
}
Route<dynamic> generateRoute(RouteSettings settings){
  if(settings.name=='login'){
    return MaterialPageRoute<dynamic>(
      builder: (BuildContext context)=>const LogInPage(),
    );
  }else{
    return MaterialPageRoute<dynamic>(
        builder: (BuildContext context)=>const OnboardingPage(),
    );
  }
}