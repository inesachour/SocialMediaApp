import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:socialmediaapp/Enumerations/sort_by.dart';
import 'package:socialmediaapp/Enumerations/topics.dart';
import 'package:socialmediaapp/Widgets/article.dart';
import 'package:socialmediaapp/Widgets/tag.dart';
import 'package:socialmediaapp/Widgets/feed_app_bar.dart';

class Feed extends StatefulWidget {
  SortBys sortBy;
  Feed({Key? key,
        required this.sortBy
  }) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}


class _FeedState extends State<Feed> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List<String> tags = ["its bunneh","shawn mendes","neguet 5weli"]; //TO BE REPLACED WITH AN ALGORITHM TO FETCH FOR REOMMENDED TAGS
    List<String> articles = ["Article 1","Article 2","Article 3"];
    List<SortBys> sortBys = [ SortBys.Trending,SortBys.Recommended,SortBys.Date];
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: FeedAppBar(context),
      body: Column(
        children: [
          Container(
            width: width,
            child: Padding(
              padding: EdgeInsets.only(
                top: height/50,
                left: width/25,
                bottom: width/200,
              ),
              child: Text("Explore",
                style: GoogleFonts.josefinSans(
                    textStyle: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      color: Theme.of(context).colorScheme.onBackground,
                    )
                ),
              ),
            ),
          ),
          Container(
            height: height/7,
            width: width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: tags.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width/75,
                  ),
                  child: Tag(content: tags[index]),
                );
              },
            ),
          ),
          Container(
            height: height/2,
            width: width,
            child: ListView.builder(
              itemCount: (articles.length)+1,
              itemBuilder: (context,index){
                if (index == 0 ) {
                  return Row(
                    children: [
                      Container(
                        width: width/1.5,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: width/25,
                          ),
                          child: InkWell(
                            onTap: () => {
                              //POP UP
                            },
                            child: Text("Something",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,

                              ),
                            ),
                          ),
                        ),
                      ),
                      DropdownButton(
                        value: widget.sortBy,
                        icon: Icon(
                          FontAwesomeIcons.bars,
                          size: 17,
                        ),
                        items: sortBys.map<DropdownMenuItem<SortBys>>((SortBys value) {
                            return DropdownMenuItem<SortBys>(
                                     value: value,
                                     child: Text(value.toString().substring(8),
                                       textAlign: TextAlign.right,
                                       style: TextStyle(
                                         color: Colors.grey,
                                       ),
                                     ),
                                   );
                             }).toList(),
                        onChanged: (SortBys? newValue) => {
                            setState(() {
                              widget.sortBy = newValue!;
                            }
                          )
                        },
                      )
                    ],
                  );
                }
                else{
                  return Padding(padding: EdgeInsets.symmetric(
                    vertical: height/200,
                    horizontal: width/50,
                  ),
                  child: Article(poster: articles[index-1], topic: Topics.nada, read_time: 9.5, title: articles[index-1], motivation: articles[index-1], head: articles[index-1],date: DateTime(1970,1,1),),);
                }
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        elevation: 0,
        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BottomBarButton(width/1.1, height/1.1 , Iconsax.home, Theme.of(context).colorScheme.primaryVariant.withOpacity(0.5)),
            BottomBarButton(width/1.1, height/1.1, Iconsax.search_normal, Theme.of(context).colorScheme.primaryVariant.withOpacity(0.5)),
            Container(
              height: height/9.6,
              width: width/5,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width/300,
                  vertical: height/300,
                ),
                child: Ink(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Theme.of(context).colorScheme.primaryVariant,
                          Theme.of(context).colorScheme.primary,
                        ],
                      ),
                      shape: BoxShape.circle,
                  ),
                  child: ElevatedButton(
                    onPressed: (){

                    },
                    style: ButtonStyle(
                      elevation:  MaterialStateProperty.all(
                          0
                      ),
                      shape: MaterialStateProperty.all(
                        CircleBorder(),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                          Colors.transparent
                      ),
                    ),
                    child: Icon(
                      Iconsax.add,
                      size: 35,
                    )
                  ),
                ),
              ),
            ),
            BottomBarButton(width/1.1, height/1.1, Iconsax.bookmark, Theme.of(context).colorScheme.primaryVariant.withOpacity(0.5)),
            BottomBarButton(width/1.1, height/1.1, Iconsax.setting, Theme.of(context).colorScheme.primaryVariant.withOpacity(0.5)),
          ],
        ),
      ),
    );
  }
}


Widget BottomBarButton(double width,double height,IconData icon,Color color) {
  return Container(
    height: height/10,
    width: width/5,
    child: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width/90,
        vertical: height/90,
      ),
      child: ElevatedButton(
        onPressed: () => {},
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(
              0
            ),
            backgroundColor: MaterialStateProperty.all(
              color
            ),
            shape: MaterialStateProperty.all(
              CircleBorder(),
            )
        ),
        child: Icon(
          icon,
        ),
      ),
    ),
  );
}