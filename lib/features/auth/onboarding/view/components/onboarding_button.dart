import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/features/auth/onboarding/controller/onboarding_controller_cubit.dart';

class OnboardingButton extends StatelessWidget {
   OnboardingButton({super.key,required this.controller});
  OnboardingControllerCubit controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child:  BlocProvider<OnboardingControllerCubit>.value(
        value: controller ,
        child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
          builder: (context, state) {
            OnboardingControllerCubit  controller= context.read<OnboardingControllerCubit>();
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    controller.onSkip(context);
                  },
                  child: const Text(
                    'Skip',
                  ),
                ),
                TextButton(
                  onPressed:controller.toNext,
                  child: const Text(
                    'next',
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
