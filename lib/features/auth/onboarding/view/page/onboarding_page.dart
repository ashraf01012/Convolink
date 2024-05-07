import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/features/auth/onboarding/controller/onboarding_controller_cubit.dart';
import 'package:untitled/features/auth/onboarding/view/components/onboarding_body.dart';
import 'package:untitled/features/auth/onboarding/view/components/onboarding_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: BlocProvider<OnboardingControllerCubit>(
        create: (context) => OnboardingControllerCubit(),
        child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
          builder: (context, state) {
            OnboardingControllerCubit  controller= context.read<OnboardingControllerCubit>();
            return  Scaffold(
              body: OnboardingBody(
                controller: controller,
              ),
              bottomNavigationBar: OnboardingButton(
                controller: controller,
              ),

            );
          },
        ),
      ),
    );
  }
}
