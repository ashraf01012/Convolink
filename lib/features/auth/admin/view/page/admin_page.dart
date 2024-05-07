import 'package:flutter/material.dart';
import 'package:untitled/core/utils/constants.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'NewProductPage');
            },
            child: Text('Add Product'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'ManageProducts');
            },
            child: Text('Edit Product'),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, 'OrdersScreen');
            },
            child: Text('View orders'),
          )
        ],
      ),
    );
  }
}
