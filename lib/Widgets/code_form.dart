import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeForm extends StatefulWidget {
  const CodeForm({Key? key}) : super(key: key);

  @override
  CodeFormState createState() => CodeFormState();
}

class CodeFormState extends State<CodeForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child:
        Column(
          children: [
            Center(
              child: Row(
                children: [
                  CircularSingleNumberInputField(),
                  CircularSingleNumberInputField(),
                  CircularSingleNumberInputField(),
                  CircularSingleNumberInputField(),
                ],
              ),
            )
          ],
        )
      );
  }
}

Widget CircularSingleNumberInputField() {
  return Padding(
      padding: EdgeInsets.only(left: 7,right: 7,top: 30,bottom: 20),
      child: Flexible(
          child: Container(
            width: 81,
            child: TextFormField(
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.0,
                fontSize: 42,
                fontWeight: FontWeight.w800,
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                LengthLimitingTextInputFormatter(1)
              ],
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color(0xffECA72C),
                      width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(
                    50
                  )
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    50,
                  )
                )
              ) ,
            ),
          )
      ),
  );
}
