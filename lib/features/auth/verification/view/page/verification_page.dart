import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/features/auth/forget/view/page/forget_page.dart';
import 'package:untitled/features/auth/verification/controller/verification_cubit.dart';
import 'package:untitled/features/auth/verification/view/components/verify_body_widget.dart';
import 'package:untitled/features/auth/verification/view/components/verify_bottom_widget.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerificationCubit(),
      child: BlocBuilder<VerificationCubit, VerificationState>(
        builder: (context, state) {
          final VerificationCubit controller =context.read<VerificationCubit>();
          return Scaffold(
            body: VerifyBodyWidget(
            ),
            backgroundColor: Colors.blueGrey[200],

            bottomNavigationBar: const SizedBox(
              height: 100,
              child: VerifyBottomWidget(),
            ),
          );
        },
      ),
    );
  }

  void _navigateToLogIn(BuildContext context) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const ForgetPage()));
  }
}
