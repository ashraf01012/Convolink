import 'package:flutter/material.dart';
import 'package:untitled/core/utils/validation.dart';
import 'package:untitled/features/auth/login/view/page/login_page.dart';

class PasswordBodyWidget extends StatelessWidget {
  var passwordController =TextEditingController();
  var confirmPasswordController=TextEditingController();

  PasswordBodyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //password
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: ChatValidation().passwordValidate,
            controller: passwordController,
            keyboardType: TextInputType.visiblePassword,
            style: const TextStyle(
              color: Colors.amber,
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
            controller: confirmPasswordController,
            keyboardType: TextInputType.visiblePassword,
            style: const TextStyle(
              color: Colors.amber,
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
              color: Colors.amber,
              minWidth: double.infinity,
              height: 50,
              elevation: 7,
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LogInPage()));
                  },
              child: const Text(
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
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
        width: 1,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.amber,
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
