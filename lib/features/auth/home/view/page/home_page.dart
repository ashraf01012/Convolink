import 'package:flutter/material.dart';
import 'package:untitled/features/auth/home/view/components/home_body_widget.dart';
import 'package:untitled/features/auth/login/view/page/login_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(

          backgroundColor: Colors.amber,
          leading:  IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const LogInPage()));
            },
          ),
          title: const Text(
            "Convlink",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.notification_important,
                color: Colors.white,
              ),
              onPressed: (){},
            ),
            IconButton(
              icon: const Text(
                'Hello',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () { },
            ),
          ],
        ),
      body: const HomeBodyWidget(),
    );
  }
}
