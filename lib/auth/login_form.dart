import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key ? key}) : super(key : key);

  @override
  LoginFormState createState(){
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            validator: (value) {
              //VALIDATION
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 20),
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 25,right: 15),
                child: Icon(FontAwesomeIcons.user),
              ) ,
              prefixIconColor: Color(0xff048A81),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff048A81),
                ),
                borderRadius: BorderRadius.circular(
                  40
                )
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff048A81),
                  width: 2.5,
                ),
                borderRadius: BorderRadius.circular(
                    40
                ),
              ),
              hintText: "Your Email",
              hintStyle: GoogleFonts.barlow(
                  textStyle: TextStyle(
                    color: Colors.grey[550],
                    fontWeight: FontWeight.w500,
                  )
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            validator: (value) {
              //VALIDATION
            },
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 20),
                prefixIcon: Padding(
                  padding: EdgeInsets.only(left: 25,right: 15),
                  child: Icon(FontAwesomeIcons.lock),
                ) ,
                prefixIconColor: Color(0xff98C1D9),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff98C1D9),
                  ),
                  borderRadius: BorderRadius.circular(
                    40
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff98C1D9),
                    width: 2.5,
                  ),
                  borderRadius: BorderRadius.circular(
                      40
                  ),
                ),
                hintText: "Your Password",
                hintStyle: GoogleFonts.barlow(
                    textStyle: TextStyle(
                      color: Colors.grey[550],
                      fontWeight: FontWeight.w500,                         )
                )
            ),
            obscureText: true,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 300,
            height: 50,
            child: Ink(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xffC70000),
                      Color(0xff211C8C),
                    ],
                  ),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(40)
                )
              ),
              child: ElevatedButton(
                onPressed: (){

                },
                style: ButtonStyle(
                    elevation:  MaterialStateProperty.all(
                      0
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.transparent
                    ),
                ),
                child: Text("Enter the Whimsical Realm of the K&K's'",
                  style: GoogleFonts.josefinSans(
                      textStyle: TextStyle(
                        fontSize: 15.5,
                        fontWeight: FontWeight.w700,
                      )
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}