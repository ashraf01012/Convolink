import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/utils/validation.dart';
import 'package:untitled/features/auth/forget/controller/forget_cubit.dart';
import 'package:untitled/features/auth/verification/view/page/verification_page.dart';

class ForgetBodyWidget extends StatelessWidget {
  var emailController = TextEditingController();

  ForgetBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetCubit(),
      child: BlocBuilder<ForgetCubit, ForgetState>(
        builder: (context, state) {
          final ForgetCubit cubit = context.read<ForgetCubit>();
          return Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //email
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: ChatValidation().emailValidate,
                  controller: cubit.emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: decoration.copyWith(
                    labelText: 'Email',
                    labelStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),

                    prefixIcon: const Icon(
                      Icons.mail,
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                //Continue button
                MaterialButton(
                    shape:  const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0))
                    ),
                    color: Colors.grey[900],
                    minWidth: double.infinity,
                    height: 50,
                    elevation: 7,
                    onPressed: () {
                     cubit.onTapContinue(context);
                    },
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
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
      color: Colors.amber,
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
        width: 3,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 2,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20),
      ),
    ),
  );
}
