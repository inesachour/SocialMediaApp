import 'package:flutter/material.dart';
import 'package:socialmediaapp/screens/feed/details.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Details(),

      theme: ThemeData(
          colorScheme: ColorScheme(
            primary: Color(0xffA76FFF),
            onPrimary: Color(0xffffffff),
            primaryVariant: Color(0xff493657),
            secondary: Color(0xffECA72C),
            onSecondary: Color(0xffffffff),
            secondaryVariant: Color(0xff3D348B),
            background: Color(0xffF2F7F2),
            onBackground: Color(0xff0D1821),
            surface: Colors.transparent,
            onSurface: Color(0xff040403),
            error: Color(0xffF18805)/*Color(0xffBF1A2F)*/,
            onError: Color(0xff040403),
            brightness: Brightness.light,
          )
      ),
    );
  }
}
