import 'dart:math';

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


AppBar FeedAppBar(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  return AppBar(
    toolbarHeight: height/7,
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: Transform.translate(
      offset: Offset(width/25,-width/100),
      child: Transform.scale(
        scale: 1.1,
        child: CircleAvatar(
          radius: width/(2*5),
          backgroundColor: Theme.of(context).colorScheme.primaryVariant,
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () => {},
            child: CircleAvatar(
              radius: (width/(2*5)) - 2,
              backgroundImage: AssetImage('assets/images/profile.webp'),
            ),
          ),
        ),
      ),
    ),
    actions: [
      Padding(
        padding:EdgeInsets.only(right: width/30),
        child: OutlinedButtonTheme(
            data: OutlinedButtonThemeData(
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                  BorderSide(
                    width: 2.0,
                    color: Theme.of(context).colorScheme.primaryVariant.withOpacity(0.4),
                  )
                ),
                shape: MaterialStateProperty.all(
                  CircleBorder()
                )
              )
            ),
            child: SizedBox(
              height: width/7.5,
              width: width/7.5,
              child: OutlinedButton(
                onPressed: () => {},
                child: Icon(
                  FontAwesomeIcons.bell,
                  size: width/15,
                  color: Theme.of(context).colorScheme.primaryVariant.withOpacity(0.8),
                ),
              ),
            )
        ),
      )
    ],
  );
}