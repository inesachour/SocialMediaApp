import 'package:flutter/material.dart';
import 'package:socialmediaapp/Enumerations/sort_by.dart';
import 'package:socialmediaapp/screens/authentication/verification_code.dart';
import 'package:socialmediaapp/screens/feed/feed.dart';
import 'screens/authentication/login.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme(
          primary: Color(0xffA76FFF),
          onPrimary: Color(0xffffffff),
          primaryVariant: Color(0xff493657),
          secondary: Color(0xffECA72C),
          onSecondary: Color(0xffffffff),
          secondaryVariant: Color(0xff3d348b),
          background: Color(0xffF2F7F2),
          onBackground: Color(0xff0D1821),
          surface: Colors.transparent,
          onSurface: Color(0xff040403),
          error: Color(0xffF18805)/*Color(0xffBF1A2F)*/,
          onError: Color(0xff040403),
          brightness: Brightness.light,
        )
      ),
      home: Feed(sortBy: SortBys.Trending),
    );
  }
}
