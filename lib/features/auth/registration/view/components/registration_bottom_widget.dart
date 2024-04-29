import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/features/auth/registration/controller/registration_cubit.dart';
class RegistrationBottomWidget extends StatelessWidget {
  const RegistrationBottomWidget({super.key, required this.controller});
  final RegistrationCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: controller,
        child: BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
      RegistrationCubit controller =context.read<RegistrationCubit>();
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: (){
             controller.onTapAlready(context);
            },
            child: const Text(
              'I already have an account ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ],
      );
        }
    ),
    );
  }
}
