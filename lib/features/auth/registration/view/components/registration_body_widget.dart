
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/utils/validation.dart';
import 'package:untitled/features/auth/home/view/page/home_page.dart';
import 'package:untitled/features/auth/registration/controller/registration_cubit.dart';
class RegistrationBodyWidget extends StatelessWidget {

  RegistrationBodyWidget({super.key, required this.controller});
  final RegistrationCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
  value: controller,
  child: BlocBuilder<RegistrationCubit, RegistrationState>(
  builder: (context, state) {
    RegistrationCubit controller =context.read<RegistrationCubit>();
    return Form(
      key: controller.formKey,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              //first name
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: ChatValidation().nameValidate,
                controller: controller.firstController,
                keyboardType: TextInputType.name,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z]',),),
                ],
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
                controller: controller.lastController,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z]',),),
                ],
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
                controller: controller.phoneController,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]',),),
                ],
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
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'\w',),),
                ],
                controller: controller.emailController,
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
                controller: controller.passwordController,
                keyboardType: TextInputType.visiblePassword,
                style: const TextStyle(
                  color: Colors.amber,
                ),
                obscureText: true,
                obscuringCharacter: "*",
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
                controller: controller.confirmPasswordController,
                keyboardType: TextInputType.visiblePassword,
                style: const TextStyle(
                  color: Colors.amber,
                ),
                obscureText: true,
                obscuringCharacter: "*",
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
                height: 10,
              ),
              //submitted button
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
                    bool? a=ChatValidation().passwordCheek(controller.passwordController.text, controller.confirmPasswordController.text)??false;
                   if(a){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomePage()));
                   }
                   else{
                    // cheekPass();
                   }
                  },
                  child:
                  const Text(
                    'Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
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
  Text cheekPass(){
    return const Text(
        'password not equal'
    );
  }
}
