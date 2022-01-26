import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:socialmediaapp/auth/login_form.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBF2FA),
      appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.transparent,
          toolbarHeight: 150,
          leading: Padding(
            padding: EdgeInsets.only(left: 25),
            child: OutlinedButtonTheme(
                data: OutlinedButtonThemeData(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<CircleBorder>(
                          CircleBorder(
                          ),
                    )
                  )
                ),
                child: OutlinedButton(
                  onPressed: () {

                  },
                  child: Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
          )
          ),
      body:Padding(
        
        padding: EdgeInsets.only(left: 16,
          right: 16
        ),
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome To K&K's",
                  style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                    ),
                  )
              ),
              Text(
                "Enter your credentials miss girl !",
                style: GoogleFonts.barlow(
                  textStyle: TextStyle(
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w600,
                    fontSize: 17
                  ),
                )
              ),
              SizedBox(
                height: 25,
              ),
              LoginForm(),
            ],
          ),
        )
      ),
    );
  }
}

