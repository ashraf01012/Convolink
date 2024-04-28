import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/features/auth/login/view/page/login_page.dart';
import 'package:untitled/features/auth/onboarding/model/onboarding_model.dart';

part 'onboarding_controller_state.dart';

class OnboardingControllerCubit extends Cubit<OnboardingControllerState> {
  OnboardingControllerCubit() : super(OnboardingControllerInitial());

  PageController pageController = PageController();
  void toNext() {
    pageController.nextPage(
      duration: const Duration(seconds: 1),
      curve: Curves.linear,
    );
  }

  Future<void> onSkip(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('onboarding',true);
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LogInPage(),
        ));
  }

  List data = [
    OnboardingModel(
      image: 'assets/images/logo.png',
      title: 'first',
    ),
    OnboardingModel(
      image: 'assets/images/logo.png',
      title: 'scound',
    ),
    OnboardingModel(
      image: 'assets/images/logo.png',
      title: 'third',
    ),
  ];
}
