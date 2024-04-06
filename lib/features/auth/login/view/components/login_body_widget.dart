import 'package:flutter/material.dart';
import 'package:untitled/core/utils/validation.dart';
import 'package:untitled/features/auth/home/view/page/home_page.dart';

class LogInBodyWidget extends StatelessWidget {
  var emailController =TextEditingController();
  var passwordController =TextEditingController();
  LogInBodyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  color: Colors.amber,
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
                height: 30,
              ),
              //password
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: ChatValidation().passwordValidate,
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: decoration.copyWith(
                  labelText:'Password',
                  prefixIcon: const Icon(
                    Icons.key,
                  ),
                  suffixIcon:const Icon(
                    Icons.remove_red_eye_sharp,
                  ) ,
                ),
                style: const TextStyle(
                  color: Colors.amber,
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
                  color: Colors.amber,
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
