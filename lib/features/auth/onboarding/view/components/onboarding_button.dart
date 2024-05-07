import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/utils/context_extension.dart';
import 'package:untitled/features/auth/onboarding/controller/onboarding_controller_cubit.dart';

class OnboardingButton extends StatelessWidget {
   OnboardingButton({super.key,required this.controller});
  OnboardingControllerCubit controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height/10,
      child:  BlocProvider<OnboardingControllerCubit>.value(
        value: controller ,
        child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
          builder: (context, state) {
            OnboardingControllerCubit  controller= context.read<OnboardingControllerCubit>();
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(15.0))
                    ),
                    color: Colors.black87,
                    onPressed: () {
                      controller.onGetStart(context);
                    },
                    child: const Text(
                      'GET STARTED',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),

                  MaterialButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(15.0))
                    ),
                    color: Colors.black87,
                    onPressed:controller.toNext,
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}