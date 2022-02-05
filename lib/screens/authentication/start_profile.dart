import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class StartProfile extends StatefulWidget {
  const StartProfile({Key? key}) : super(key: key);

  @override
  State<StartProfile> createState() => _StartProfileState();
}

class _StartProfileState extends State<StartProfile> {

  File? _profile;

  imagePicker () async{
    try {
      final ImagePicker _picker = ImagePicker();
      final image = await _picker.pickImage(
        source: ImageSource.gallery,
      );
      if (image == null) return;
      final temp = File(image.path);
      setState(() {
        _profile = temp;
      });
    } on PlatformException catch (e){
      print("Failed to pick image $e");
    }
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:Icon(Icons.arrow_back_ios_outlined, color: Colors.grey,),
      ),


      body: Padding(
        padding: EdgeInsets.symmetric(vertical: height*0.05, horizontal: width*0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height*0.08),

            SizedBox(
              width: double.infinity,
              child: Text(
                  "Start Your Profile",
                textAlign: width< 750 ? TextAlign.start : TextAlign.center,
                style: TextStyle(fontSize: width < 750 ? 30 : 42, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: height*0.015,),
            SizedBox(
              width: double.infinity,
              child: Text(
                  "This is how you're displayed in community",
                  textAlign: width< 750 ? TextAlign.start : TextAlign.center,
                  style: TextStyle(color: Colors.grey[700],fontSize:width < 750 ? 15 : 22 ),
                ),
            ),
            SizedBox(height: height*0.02,),
            SizedBox(
              width: width > 800 ? width*0.7 : width*0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                      child: ElevatedButton(
                        onPressed: (){
                          imagePicker();
                        },
                        child: _profile !=null ? CircleAvatar(
                          backgroundColor: Colors.transparent,
                          radius: width>1000 ? width*0.08 :width*0.1,
                          backgroundImage: Image.file(
                            _profile!,
                            fit: BoxFit.fill,
                          ).image,
                        ) : Icon(
                          Icons.account_circle_sharp,
                          color: Colors.grey[300],
                          size: width>1000 ? width*0.17 :width*0.22,
                        ),
                        style: ButtonStyle(
                            shape:MaterialStateProperty.all(CircleBorder()),
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                            elevation: MaterialStateProperty.all(0),
                            backgroundColor: MaterialStateProperty.all(Colors.transparent),

                        ),
                      ),
                      ),
                  
                  SizedBox(width: width*0.04,),
                  Expanded(
                    flex: 5,
                    child: Form(
                        child: Column(
                          children: [
                            TextFormField(
                              style: TextStyle(
                                fontWeight: FontWeight.w500
                              ),
                              decoration: InputDecoration(
                                hintText: "Enter your name",
                              ),
                            ),
                            SizedBox(height: 10,),
                            TextFormField(
                              style: TextStyle(
                                  fontWeight: FontWeight.w500
                              ),
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
            ),
            SizedBox(height: height*0.09,),
            ElevatedButton(
              onPressed: (){},
              child: Text("Continue"),
              style: ButtonStyle(
                fixedSize: MaterialStateProperty.all(Size(width < 800? 300 : 450 ,height*0.08)),
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xffa76fff)),
                shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
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


