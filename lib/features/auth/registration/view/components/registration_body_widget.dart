import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/utils/constants.dart';
import 'package:untitled/core/utils/validation.dart';
import 'package:untitled/features/auth/registration/controller/registration_cubit.dart';

class RegistrationBodyWidget extends StatelessWidget {
  RegistrationBodyWidget({super.key, required this.controller});
  final RegistrationCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
          RegistrationCubit controller = context.read<RegistrationCubit>();
          return Form(
            key: controller.formKey,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //first name
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: ChatValidation().nameValidate,
                      controller: controller.firstController,
                      keyboardType: TextInputType.name,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(
                            r'[A-Za-z]',
                          ),
                        ),
                      ],
                      decoration: decoration.copyWith(
                          labelText: 'Full Name',
                          prefixIcon: const Icon(
                            Icons.account_box,
                            size: 30,
                          )),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //email
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: ChatValidation().emailValidate,
                      controller: controller.emailController,
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter,
                      ],
                      keyboardType: TextInputType.emailAddress,
                      decoration: decoration.copyWith(
                        labelText: 'Email',
                        prefixIcon: const Icon(
                          Icons.mail,
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //password
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: ChatValidation().passwordValidate,
                      controller: controller.passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      obscuringCharacter: '⬤',
                      decoration: decoration.copyWith(
                        labelText: 'Password',
                        prefixIcon: const Icon(
                          Icons.key_rounded,
                          size: 30,
                        ),
                        suffixIcon: const Icon(
                          Icons.remove_red_eye_rounded,
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //confirm password
                    TextFormField(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: ChatValidation().passwordValidate,
                      controller: controller.confirmPasswordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      obscuringCharacter: '⬤',
                      decoration: decoration.copyWith(
                        labelText: 'Confirm Password',
                        prefixIcon: const Icon(
                          Icons.key_rounded,
                          size: 30,
                        ),
                        suffixIcon: const Icon(
                          Icons.remove_red_eye_rounded,
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    //submitted button
                    MaterialButton(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        color: Colors.black87,
                        minWidth: double.infinity,
                        height: 50,
                        elevation: 7,
                        onPressed: () {
                          controller.onPressedButton(context);
                        },
                        child: const Text(
                          'Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
