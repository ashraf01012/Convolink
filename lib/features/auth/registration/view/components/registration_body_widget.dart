import 'package:flutter/material.dart';
import 'package:untitled/core/utils/validation.dart';
import 'package:untitled/features/auth/home/view/page/home_page.dart';

class RegistrationBodyWidget extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController=TextEditingController();
  var firstController = TextEditingController();
  var lastController = TextEditingController();
  var phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            //first name
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: ChatValidation().nameValidate,
              controller: firstController,
              keyboardType: TextInputType.name,
              style: const TextStyle(
                color: Colors.amber,
              ),
              decoration: decoration.copyWith(
                labelText: 'First Name',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //last name
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: ChatValidation().nameValidate,
              controller: lastController,
              keyboardType: TextInputType.name,
              style: const TextStyle(
                color: Colors.amber,
              ),
              decoration: decoration.copyWith(
                labelText: 'Last Name',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //phone
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: ChatValidation().phoneValidate,
              controller: phoneController,
              keyboardType: TextInputType.phone,
              style: const TextStyle(
                color: Colors.amber,
              ),
              decoration: decoration.copyWith(
                labelText: 'Phone',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //email
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator:ChatValidation().emailValidate,
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                color: Colors.amber,
              ),
              decoration: decoration.copyWith(
                labelText:'Email',
                prefixIcon: const Icon(
                  Icons.mail,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
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
              height: 10,
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
            //submitted button
        
          ],
        ),
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
