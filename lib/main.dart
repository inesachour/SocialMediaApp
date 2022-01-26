import 'package:flutter/material.dart';
import './auth/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      /*theme: ThemeData(
        colorScheme: ColorScheme(

        )
      ),*/
      home: LoginPage(),
    );
  }
}
