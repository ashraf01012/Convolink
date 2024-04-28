import 'package:flutter/material.dart';
import 'package:untitled/core/utils/context_extension.dart';
import 'package:untitled/features/auth/login/view/page/login_page.dart';
import 'package:untitled/features/auth/password/view/page/password_page.dart';

class VerifyBodyWidget extends StatelessWidget {
  var codeController =TextEditingController();
  double wid=(double.infinity)/2.0;

  VerifyBodyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return  Column(
       // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            SizedBox(
              width: context.width/7,
              height: 70,
              child: TextFormField(
                    keyboardType: TextInputType.number,
                      decoration: decoration,
                      maxLength: 1,
                    ),
            ),
            const SizedBox(
              width:20,
            ),
        SizedBox(
          width:  context.width/7,
          height: 70,
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: decoration,
            maxLength: 1,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        SizedBox(
          width: context.width/7,
          height: 70,
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: decoration,
            maxLength: 1,
          ),
        ),
            const SizedBox(
              width: 20,
            ),
        SizedBox(
          width:  context.width/7,
          height: 70,
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: decoration,
            maxLength: 1,
          ),
        ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width:  context.width/3,
              child: MaterialButton(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0))
                  ),
                  color: Colors.amber,
                  minWidth: double.infinity,
                  height: 50,
                  elevation: 7,
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const PasswordPage()));
                  },
                  child: const Text(
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )
              ),
            ),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
          width:  context.width/3,
          child: MaterialButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0))
              ),
              color: Colors.red,
              minWidth: double.infinity,
              height: 50,
              elevation: 7,
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LogInPage()));
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              )
          ),
        ),
          ],
        ),
      ],
    );
  }
  InputDecoration decoration = const InputDecoration(
    counterText: '',
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 2,
      ),
      borderRadius: BorderRadius.all(Radius.circular(25)),
    ),
  );
}
