import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:untitled/core/utils/context_extension.dart';
import 'package:untitled/features/auth/verification/controller/verification_cubit.dart';

class VerifyBodyWidget extends StatelessWidget {
  VerifyBodyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerificationCubit(),
      child: BlocBuilder<VerificationCubit, VerificationState>(
        builder: (context, state) {
          final VerificationCubit cubit = context.read<VerificationCubit>();
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Enter your code",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              PinCodeTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                appContext: context,
                pastedTextStyle: TextStyle(
                  color: Colors.green.shade600,
                  fontWeight: FontWeight.bold,
                ),
                length: 5,
                obscureText: true,
                obscuringCharacter: '⬤',
                blinkWhenObscuring: true,
                animationType: AnimationType.scale,
                validator: (v) {
                  if (v!.length < 5) {
                    return "validator";
                  } else {
                    return null;
                  }
                },
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.circle,
                    fieldHeight: context.width / 6,
                    fieldWidth: context.width / 6,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    inactiveColor: Colors.black,
                    activeColor: Colors.black,
                    selectedFillColor: Colors.white,
                    selectedColor: Colors.black,
                    fieldOuterPadding:
                        EdgeInsets.only(
                          right: context.width / 30,
                        ),
                ),
                cursorColor: Colors.black,
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
                controller: cubit.pinCodeController,
                keyboardType: TextInputType.number,
                boxShadows: const [
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Colors.black12,
                    blurRadius: 10,
                  )
                ],
                onCompleted: (v) {
                  debugPrint("Completed");
                },
                onChanged: (value) {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: context.width / 3,
                    child: MaterialButton(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
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
                            fontSize: 20,
                          ),
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: context.width / 3,
                    child: MaterialButton(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                        color: Colors.black87,
                        minWidth: double.infinity,
                        height: 50,
                        elevation: 7,
                        onPressed: () {
                          cubit.onTapCancel(context);
                        },
                        child:  const Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

}
