import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/utils/constants.dart';
import 'package:untitled/core/utils/validation.dart';
import 'package:untitled/features/auth/forget/controller/forget_cubit.dart';

class ForgetBodyWidget extends StatelessWidget {
  var emailController = TextEditingController();
  ForgetBodyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      backgroundColor: kPrimaryColor,
      body: BlocProvider(
        create: (context) => ForgetCubit(),
        child: BlocBuilder<ForgetCubit, ForgetState>(
          builder: (context, state) {
            final ForgetCubit cubit = context.read<ForgetCubit>();
            return SingleChildScrollView(
              padding: const EdgeInsets.only(top: 100),
              child: Form(
                key: cubit.formKey,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                   // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Enter your Email And We Will send your a password reset link.',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,

                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      //emails
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
                            'Reset Password',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          )
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

}
