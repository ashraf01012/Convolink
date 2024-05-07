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

  Future<void> onGetStart(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('onboarding',true);
    Navigator.popAndPushNamed(context, 'login');
  }

  List data = [
    OnboardingModel(
      image: 'assets/images/onboarding1.png',
      title: 'Joy in Every Click',
      subtitle: 'Elevate your shopping experience with us. Explore curated collections and exclusive deals that turn each purchase into a moment of joy',
    ),
    OnboardingModel(
      image: 'assets/images/onboarding2.png',
      title: 'We are Here for You',
      subtitle: 'Experience unwavering support from our dedicated team. No matter the question or concern, we are here to make your journey seamless and stress-free',
    ),
    OnboardingModel(
      image: 'assets/images/onboarding3.png',
      title: 'On-Time, Every Time',
      subtitle: 'Expect reliable and swift delivery, ensuring your goods arrive not just on time but with the care and quality you deserve. Your happiness is our commitment.',
    ),
  ];
}
