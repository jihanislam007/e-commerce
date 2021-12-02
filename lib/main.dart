import 'package:e_commerce/Auth/login.dart';
import 'package:e_commerce/DashBoard.dart';
import 'package:flutter/material.dart';

import 'productView/screesn/ProductView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ProductView()

      //login()
    );
  }
}
