import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/utils/context_extension.dart';
import 'package:untitled/features/auth/onboarding/controller/onboarding_controller_cubit.dart';

class OnboardingBody extends StatelessWidget {
   OnboardingBody({super.key,required this.controller});
  OnboardingControllerCubit controller;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        Expanded(
          child: BlocProvider<OnboardingControllerCubit>.value(
            value: controller ,
            child: BlocBuilder<OnboardingControllerCubit, OnboardingControllerState>(
              builder: (context, state) {
                OnboardingControllerCubit  controller= context.read<OnboardingControllerCubit>();
                return PageView(
                  controller: controller.pageController,
                  children:List.generate(controller.data.length, (index) {
                    return Column(
                      children: [
                        Image.asset(controller.data[index].image),
                        Text(
                          controller.data[index].title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            width: context.width/2,
                            child: Text(
                              controller.data[index].subtitle,
                              style:  const TextStyle(
                                color: Colors.black45,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
