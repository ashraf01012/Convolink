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
      duration: const Duration(milliseconds: 250),
      curve: Curves.linear,
    );
  }

  Future<void> onSkip(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('onboarding',true);
    Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const LogInPage(),
        ));
  }

  List data = [
    OnboardingModel(
      image: 'assets/images/onboarding1.png',
      title: 'Find the right friends',
      subtitle: 'We are tailored to meet your needs of finding the perfect friend',
    ),
    OnboardingModel(
      image: 'assets/images/onboarding2.png',
      title: 'Choose the right friends',
      subtitle: 'Get to choose the out of the best, as we will provide you options',
    ),
    OnboardingModel(
      image: 'assets/images/onboarding3.png',
      title: 'Experience hospitality',
      subtitle: 'Pay , Enjoy and you will definitely recommend us to friends and family',
    ),
  ];
}
