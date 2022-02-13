import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  @override
  Widget build(BuildContext context) {


    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor ,
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          icon :Icon(Icons.arrow_back_ios_outlined, color: Colors.grey,),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: (){},
        ),
        title: Text("Blog Post",style: TextStyle(color: Colors.grey),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_horiz, color: Colors.grey,),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          SizedBox(width: width*0.03,)
        ],
      ) ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height*0.02,),
            AccountInfos(height,width),
            SizedBox(height: height*0.03,),
            Post(width,height),
            SizedBox(height: height*0.03,),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          PostStatus(CupertinoIcons.heart, "1k" ,""),
          PostStatus(CupertinoIcons.chat_bubble, "500" ,""),
          PostStatus(CupertinoIcons.arrowshape_turn_up_right, "1k" ,""),
          PostStatus(CupertinoIcons.bookmark_fill, "" ,""),
        ],
      ),
    );
  }


  BottomNavigationBarItem PostStatus(icon,String text, String label){

    return BottomNavigationBarItem(
      label: label,
      icon: ElevatedButton.icon(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: (){},
        icon: Icon(icon,color: Colors.grey,),
        label: Text(text,style: TextStyle(color: Colors.grey),),
      ),
    );
  }


  Widget AccountInfos(height,width){
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CircleAvatar(
            radius: width < 1000? width*0.08 : 75,
            backgroundImage: Image.asset("assets/logos/google.jpg").image,
            backgroundColor: Colors.transparent,
          ),
        ),
        Expanded(
          flex: width < 900 ? 3 : 5,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name walla dra chneya",
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: width< 800? width*0.05 : 35,
              ),
            ),
            SizedBox(height: 5,),
            RichText(
              text: TextSpan(
                text: 'Topic : ',
                style: TextStyle(
                    fontSize: width < 800 ? width*0.032 : 23,
                    color: Colors.grey
                ),
                children: [
                  TextSpan(
                    text: 'Test Test',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: width< 800? width*0.038 : 28,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ) ,)
      ],
    );
  }


  Widget Post(width,height){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal : width*0.05),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              "Title title title title title title title title title title title title title",
              style: TextStyle(
                  fontSize: width< 800? width*0.05 : 35,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: double.infinity,
            child: Text(
              "Title title title title title title title title title title title title title Title title title title title title title title title title title title title Title title title title title title title title title title title title title Title title title title title title title title title title title title title Title title title title title title title title title title title title title",
              style: TextStyle(
                fontSize: width< 800? width*0.03 : 22,
                height: 1.5,
                color: Colors.grey,
              ),
            ),
          ),
          SizedBox(height: 25,),
          Image.asset(
            'assets/logos/google.jpg',
            width: width*0.6,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}


