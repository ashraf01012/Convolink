import 'package:flutter/material.dart';
import 'package:untitled/core/utils/validation.dart';
import 'package:untitled/features/auth/verification/view/page/verification_page.dart';

class ForgetBodyWidget extends StatelessWidget {
  var emailController =TextEditingController();

  ForgetBodyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //email
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator:ChatValidation().emailValidate,
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: decoration.copyWith(
              labelText:'Email',
              prefixIcon: const Icon(
                Icons.mail,
              ),
            ),
            style: const TextStyle(
              color: Colors.amber,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          //Continue button
          MaterialButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0))
              ),
              color: Colors.amber,
              minWidth: double.infinity,
              height: 50,
              elevation: 7,
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const VerificationPage()));
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
  }
  InputDecoration decoration = const InputDecoration(
    labelStyle: TextStyle(
      color: Colors.amber,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 2,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.amber,
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
