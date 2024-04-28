import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/features/auth/registration/controller/registration_cubit.dart';
import 'package:untitled/features/auth/registration/view/components/registration_body_widget.dart';
import 'package:untitled/features/auth/registration/view/components/registration_bottom_widget.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<RegistrationCubit>(
        create: (context) => RegistrationCubit(),
        child: BlocBuilder<RegistrationCubit, RegistrationState>(
          builder: (context, state) {
           final RegistrationCubit controller =context.read<RegistrationCubit>();
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.amber,
              ),
              body: SafeArea(
                child: RegistrationBodyWidget(
                  controller: controller,
                ),
              ),
              bottomNavigationBar:  SizedBox(
                height: 150,
                child: RegistrationBottomWidget(
                  controller: controller,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
