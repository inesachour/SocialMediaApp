import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:socialmediaapp/Enumerations/topics.dart';

class Article extends StatefulWidget {
  String poster;
  Topics topic;
  double read_time;
  String title;
  String motivation;
  String head;
  DateTime date;
  Article({Key? key,
          required this.poster,
          required this.topic,
          required this.read_time,
          required this.title,
          required this.motivation,
          required this.head,
          required this.date}) : super(key: key);

  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).colorScheme.primaryVariant.withOpacity(0.05),
      ),
      width: width,
      height: height/3,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width/50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height/10,
              child: Row(
                children: [
                  SizedBox(
                    width: width/10,
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.onBackground,
                      radius: width/6.5,
                      child: CircleAvatar(
                        radius: (width/10)-21,
                        backgroundImage: AssetImage("assets/images/admin.png"),
                      ),
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width/100,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: width/1.9,
                              child: Text(widget.poster,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17.5,
                                  letterSpacing: 0.4,
                                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.8),
                                ),
                              )
                            ),
                            Text("Date : ",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[600],
                              ),
                            ),
                            Text(DateFormat("dd/MM/yyyy").format(widget.date),
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("Topic : ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.4,
                                color: Colors.grey[600],
                              ),
                            ),
                            Text(widget.topic.toString().substring(7),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.2,
                              ),
                            ),
                          ]
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                right: width/4,
                left: width/50,
              ),
              child: Text(widget.title,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w900,
                  color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width/50,
                right: width/6,
                top: height /50,
                bottom: height/40,
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: width/30,
                ),
                child: Text(widget.motivation,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w400,
                    fontSize: 19,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width/50,
                right: width/6,
                bottom: height/75,
              ),
              child: Text(widget.head+"...",
                style: TextStyle(
                  fontSize: 19.2
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: width/33,
                right: width/33,
              ),
              child: Row(
                children: [
                  Container(
                    width: 7.2*width/9,
                    child: Text(widget.read_time < 60 ?
                    "Read Time : "+ widget.read_time.truncate().toString()+":"+((widget.read_time-widget.read_time.truncate())*60).truncate().toString()+" min" :
                    "Read Time : "+(widget.read_time.truncate()/60).truncate().toString()+":"+(widget.read_time.truncate() - (widget.read_time.truncate()/60).truncate()*60).toString()+":"+((widget.read_time-widget.read_time.truncate())*60).truncate().toString()+" hr",
                      style: TextStyle(
                        color: widget.read_time > 60 ? Colors.red : Colors.green,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.15,
                      ),
                    ),
                  ),
                  Icon(FontAwesomeIcons.bookmark,
                    size: 23,
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
