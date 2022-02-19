import 'package:flutter/material.dart';

AppBar HomeScreenAppBar(){
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      toolbarHeight: 100,
      leading: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 0,top: 0),
          child: OutlinedButtonTheme(
            data: OutlinedButtonThemeData(
              style: ButtonStyle(
                elevation:  MaterialStateProperty.all(
                  0
                ),
                backgroundColor: MaterialStateProperty.all(
                  Colors.transparent,
                )
              )
            ),
            child: OutlinedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),

              ),
              onPressed: () => {

              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.grey,
              ),
            ),
          )
          ),
      )
      );



      /*Padding(
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
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                EdgeInsets.all(4),
              ),
              backgroundColor: MaterialStateProperty.all(
                  Colors.transparent
              ),
            ),
            child: Center(
              child: Icon(Icons.arrow_back_ios_new_outlined,
                color: Colors.grey,
              ),
            )
          ),
        ),
      )*/
}