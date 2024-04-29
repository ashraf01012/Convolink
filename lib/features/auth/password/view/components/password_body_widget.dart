import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/utils/validation.dart';
import 'package:untitled/features/auth/login/view/page/login_page.dart';
import 'package:untitled/features/auth/password/controller/password_cubit.dart';

class PasswordBodyWidget extends StatelessWidget {


  PasswordBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PasswordCubit(),
      child: BlocBuilder<PasswordCubit, PasswordState>(
        builder: (context, state) {
          PasswordCubit cubit =context.read<PasswordCubit>();
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //password
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: ChatValidation().passwordValidate,
                  controller: cubit.passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscuringCharacter: '⬤',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  obscureText: true,
                  decoration: decoration.copyWith(
                    labelText: 'Password',
                    prefixIcon: const Icon(
                      Icons.key,
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye_sharp,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //confirm password
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: ChatValidation().passwordValidate,
                  controller: cubit.confirmPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscuringCharacter: '⬤',
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  obscureText: true,
                  decoration: decoration.copyWith(
                    labelText: 'Confirm Password',
                    prefixIcon: const Icon(
                      Icons.key,
                    ),
                    suffixIcon: const Icon(
                      Icons.remove_red_eye_sharp,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                //submit button
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
                      cubit.onTapSubmit(context);
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  InputDecoration decoration = const InputDecoration(
    labelStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white60,
        width: 1,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
  );
}
