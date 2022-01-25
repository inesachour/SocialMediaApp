import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartProfile extends StatelessWidget {
  const StartProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey,),
            shape: BoxShape.circle,
          ),
          child: Align(
            alignment: Alignment.center,
            child: IconButton(
              onPressed: (){},
              icon : Icon(Icons.arrow_back_ios_new_outlined, color: Colors.grey,size: 50),
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Text(
                  "Start Your Profile",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              child: Text(
                "This is how you're displayed in community",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.grey[700],fontSize:15 ),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Expanded(

                  flex: 1,
                    child: Icon(Icons.account_circle_rounded, color: Colors.grey,size: 80,) // maybe circleavatar
                ),
                Expanded(
                  flex: 3,
                  child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter your name"
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter your username"
                            ),
                          ),
                        ],
                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              onPressed: (){},
              child: Text("Continue"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
                shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                    ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
