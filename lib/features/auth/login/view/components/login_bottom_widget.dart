import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/features/auth/forget/view/page/forget_page.dart';
import 'package:untitled/features/auth/login/controller/login_cubit.dart';
import 'package:untitled/features/auth/registration/view/page/registration_page.dart';
class LogInBottomWidget extends StatelessWidget {
  const LogInBottomWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => LoginCubit(),
  child: BlocBuilder<LoginCubit, LoginState>(

  builder: (context, state) {
    final LoginCubit cubit = context.read<LoginCubit>();
    return Column(
      children: <Widget>[
        TextButton(
          onPressed: (){
            cubit.onPressedForget(context);
          },
          child: const Text(
            'Forget password',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an account ',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: (){
                cubit.onPressedCreate(context);
              },
              child: const Text(
                'Create a new account',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
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
