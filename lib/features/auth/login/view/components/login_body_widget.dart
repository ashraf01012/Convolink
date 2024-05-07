import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/utils/constants.dart';
import 'package:untitled/core/utils/validation.dart';
import 'package:untitled/features/auth/login/controller/login_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LogInBodyWidget extends StatefulWidget {
  const LogInBodyWidget({super.key, required this.controller});

  final LoginCubit controller;

  @override
  State<LogInBodyWidget> createState() => _LogInBodyWidgetState();
}

class _LogInBodyWidgetState extends State<LogInBodyWidget> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: BlocProvider.of<LoginCubit>(context).isLoading,
            child: Form(
              key: widget.controller.formKey,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: const AssetImage(
                              "assets/images/logo.png"),
                          radius: 100,
                          backgroundColor: Colors.blueGrey[200],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        //email
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: ChatValidation().emailValidate,
                          controller: widget.controller.emailController,
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
                          height: 30,
                        ),
                        //password
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: ChatValidation().passwordValidate,
                          controller: widget.controller.passwordController,
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
                              Icons.remove_red_eye_sharp,
                              size: 30,
                            ),
                          ),

                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        //login button
                        MaterialButton(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10.0))
                            ),
                            color: Colors.black87,
                            minWidth: double.infinity,
                            height: 50,
                            elevation: 7,
                            onPressed: () {
                              widget.controller.onPressedButton(context);
                            },
                            child: const Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            )
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
