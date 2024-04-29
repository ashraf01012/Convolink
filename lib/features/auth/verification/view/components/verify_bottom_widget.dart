import 'package:flutter/material.dart';

class VerifyBottomWidget extends StatelessWidget {
  const VerifyBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(onPressed: () {
        },
            child:const Text('Send the code again',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,

              ),
            ),
        ),
      ],
    );
  }
}
