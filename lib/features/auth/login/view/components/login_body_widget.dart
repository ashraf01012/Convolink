import 'package:flutter/material.dart';
import 'package:untitled/core/utils/validation.dart';
import 'package:untitled/features/auth/home/view/page/home_page.dart';
import 'package:untitled/features/auth/login/controller/login_cubit.dart';
class LogInBodyWidget extends StatelessWidget {
   LogInBodyWidget({super.key, required this.controller});
  final LoginCubit controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                CircleAvatar(
                backgroundImage: const AssetImage("assets/images/logo.png"),
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
                validator:ChatValidation().emailValidate,
                controller: controller.emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: decoration.copyWith(
                  labelText:'Email',
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
                controller: controller.passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                obscuringCharacter: '⬤',
                decoration: decoration.copyWith(
                  labelText:'Password',
                  prefixIcon: const Icon(
                    Icons.key_rounded,
                    size: 30,
                  ),
                  suffixIcon:const Icon(
                    Icons.remove_red_eye_sharp,
                    size: 30,
                  ) ,
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
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomePage()));
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
            ],
          ),
        ),
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
          width: 3,
        ),

        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
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
