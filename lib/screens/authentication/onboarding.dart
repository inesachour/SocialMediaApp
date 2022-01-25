import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double min = width < height ? width : height;

    return SafeArea(
      child: SizedBox(
        height: height,
        child: Scaffold(
          body: Container(
              margin: EdgeInsets.only(top : height*0.04,left: 20,right: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  //App Logo
                  Icon(FontAwesomeIcons.piedPiper, size: min*0.18,color: Color(0xfff7ba05)),
                  SizedBox(height: height*0.045),
                  Column(
                    children: <Widget>[

                      //Welcome text .. kinda
                      Text(
                      "We Are Preparing Something Great For You!",
                      style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold,),
                      ),

                      //Sign in buttons
                      SizedBox(height : height*0.07),
                      Button("Apple", FontAwesomeIcons.apple,null ,0xff000000, width,height), //TODO sign in with apple
                      SizedBox(height : height*0.02),
                      Button("Google", null, "google.png", 0xff034078,width,height), //TODO sign in with google
                      SizedBox(height : height*0.02),
                      Button("Email", Icons.email,null, 0xffe23f36,width,height), //TODO sign in with email
                      SizedBox(height: height*0.04,),

                      //log in redirect
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Already have account? ",style: TextStyle(color: Colors.grey, fontSize: 17,fontWeight: FontWeight.w500),),
                          InkWell(
                            onTap: (){print("Tap log in");}, //TODO redirect to login
                            child: Text(
                              "Log In", style: TextStyle(
                                color: Colors.deepPurpleAccent[100],
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                decoration: TextDecoration.underline
                            ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

          //privacy policy and terms of use
          bottomNavigationBar: Padding(
            padding: EdgeInsets.only(left: 15,right:15,bottom: 15,top:6 ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(text: 'By continuing, you accept the ',style: TextStyle(color: Colors.grey)),
                  TextSpan(
                    text: "Terms of Use",
                    style: TextStyle(color: Colors.grey, decoration: TextDecoration.underline),
                    recognizer: new TapGestureRecognizer()..onTap = () => print('Tap Here onTap') ,
                  ),
                  TextSpan(text: " and ", style: TextStyle(color: Colors.grey)),
                  TextSpan(
                    text: "Privacy Policy",
                    style: TextStyle(color: Colors.grey,decoration: TextDecoration.underline),
                    recognizer: new TapGestureRecognizer()..onTap = () => print('Tap Here onTap'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



//sign in button
Widget Button (String socialMedia, icon,photo , int color,double width,double height) {

  width = width > 600 ? width*0.4 : width;
  //height = height < 1000 ? height*0.9 : height;

  return ElevatedButton(
    onPressed: (){},
    style: ButtonStyle(
      fixedSize: MaterialStateProperty.all<Size>(Size(width,height*0.09)),
      backgroundColor: MaterialStateProperty.all<Color>(Color(color)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Expanded(
          flex: 1,
          child:icon !=null? Icon(icon, size: width*0.065,): Image.asset("assets/logos/google.png",height: width*0.06,),
        ),
        Expanded(
          flex: 6,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(text: 'Continue with ', style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 17)),
                TextSpan(text: socialMedia, style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w500),),
              ],
            ),
          ),
        ),

        Expanded(
          flex: 1,
          child:Container(),
        ),
      ],
    ),
  );

}

