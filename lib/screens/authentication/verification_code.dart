import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socialmediaapp/Widgets/HomeScreenAppBar.dart';
import 'dart:async';

import '../../Widgets/code_form.dart';

class VerificationCodePage extends StatefulWidget {
  const VerificationCodePage({Key? key}) : super(key: key);

  @override
  VerificationCodePageState createState() => VerificationCodePageState();
}

class VerificationCodePageState extends State<VerificationCodePage> {
  static const max = 5;
  int seconds = max;
  Timer? timer; // type? var => variable can be null

  void startTimer() {
    //When to update the value of the timer
    //+ The callback function
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      // USE THE setState so the UI gets updated
      setState(() => {
          if(seconds == 0){
            timer?.cancel()
          }else {
            seconds--
          }
        }
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F7F2),
      appBar: HomeScreenAppBar(),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15),
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //ElevatedButton(onPressed: () => startTimer(), child: Text("Run")),
              Text("Your code to the realm",
                style: GoogleFonts.josefinSans(
                  textStyle: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Text("Enter the verification code sent to you by mail",
                style: GoogleFonts.josefinSans(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[600],
                ),
              ),
              CodeForm(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Resend",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ) ,
                  ),
                  Text(" In : "+seconds.toString(),
                    style: TextStyle(
                      color: Color(0xff0d1821),
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  child: Container(
                    width: 300,
                    height: 50,
                    child: Ink(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Color(0xff493657),
                              Color(0xffA76FFF),
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
                        child: Text("Verify Code",
                          style: GoogleFonts.josefinSans(
                              textStyle: TextStyle(
                                fontSize: 15.5,
                                fontWeight: FontWeight.w700,
                              )
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


