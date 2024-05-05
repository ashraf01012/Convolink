import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/utils/constants.dart';
import 'package:untitled/features/auth/login/controller/login_cubit.dart';
import 'package:untitled/features/auth/login/view/components/login_body_widget.dart';
import 'package:untitled/features/auth/login/view/components/login_bottom_widget.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(),
      child: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          final LoginCubit controller =context.read<LoginCubit>();
          return Scaffold(
            backgroundColor:kPrimaryColor,
            body: LogInBodyWidget(
              controller: controller,
            ),
            bottomNavigationBar: const SizedBox(
              height: 100,
              child: LogInBottomWidget(),
            ),
          );
        },
      ),
    );
  }
}
