import 'package:flutter/material.dart';
import 'package:untitled/features/auth/home/view/page/home_page.dart';
import 'package:untitled/features/auth/login/view/page/login_page.dart';

class RegistrationBottomWidget extends StatelessWidget {
  const RegistrationBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                'Submit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              )
          ),
          TextButton(
            onPressed: (){
              _navigateToLogIn(context);
            },
            child: const Text(
              'I already have an account ',
            ),
          ),
        ],
      ),
    );
  }
  void _navigateToLogIn(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LogInPage()));
  }
}
