import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/my_cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Getx state management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyCart(),
    );
  }
}

