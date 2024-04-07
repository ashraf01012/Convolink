import 'package:flutter/material.dart';
import 'package:untitled/features/auth/forget/view/page/forget_page.dart';
import 'package:untitled/features/auth/registration/view/page/registration_page.dart';
class LogInBottomWidget extends StatelessWidget {
  const LogInBottomWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextButton(
          onPressed: (){
            _navigateToForget(context);
          },
          child: const Text(
            'Forget Password',
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Don\'t have an account ',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            TextButton(
              onPressed: (){
                _navigateToCreateAccount(context);
              },
              child: const Text(
                'Create a new Account',
              ),
            ),
          ],
        ),
      ],
    );
  }
  void _navigateToCreateAccount(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const RegistrationPage()));
  }
  void _navigateToForget(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ForgetPage()));
  }
}
