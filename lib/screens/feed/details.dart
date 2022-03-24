import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialmediaapp/screens/feed/comments.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  @override
  Widget build(BuildContext context) {

    _show(){
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return Comments();
          }
      );
    }

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background ,
      appBar:AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: IconButton(
          icon :Icon(Icons.arrow_back_ios_outlined, color: Colors.white,),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onPressed: (){},
        ),
        title: Text("Blog Post",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_horiz, color: Colors.white,),
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
            AccountInfos(height,width,context),
            SizedBox(height: height*0.03,),
            Post(width,height,context),
            SizedBox(height: height*0.03,),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Theme.of(context).colorScheme.primary,

        items: [
          PostStatus(CupertinoIcons.heart_fill, "1k" ,"",(){}),
          PostStatus(CupertinoIcons.chat_bubble_fill, "500" ,"",_show),
          PostStatus(CupertinoIcons.arrowshape_turn_up_right_fill, "1k" ,"",(){}),
          PostStatus(CupertinoIcons.bookmark_fill, "" ,"",(){}),
        ],
      ),
    );
  }



  BottomNavigationBarItem PostStatus(icon,String text, String label, Function f){

    return BottomNavigationBarItem(
      label: label,
      icon: ElevatedButton.icon(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
        ),
        onPressed: (){f();},
        icon: Icon(icon,color: Colors.white,),
        label: Text(text,style: TextStyle(color: Colors.white),),
      ),
    );
  }


  Widget AccountInfos(height,width,context){
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: CircleAvatar(
            radius: width < 1000? width*0.08 : 75,
            //backgroundImage: Image.asset("assets/logos/google.jpg").image,
            backgroundColor: Colors.transparent,
            child: Image.asset("assets/logos/google.jpg",fit: BoxFit.cover,),

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
                fontWeight: FontWeight.w500,
                fontSize: width< 800? width*0.047 : 35,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
            SizedBox(height: 5,),
            RichText(
              text: TextSpan(
                text: 'Topic : ',
                style: TextStyle(
                    fontSize: width < 800 ? width*0.032 : 23,
                    color: Theme.of(context).colorScheme.secondary,
                ),
                children: [
                  TextSpan(
                    text: 'Test Test',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
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


  Widget Post(width,height,context){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal : width*0.05),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,

            child: Text(
              "Lorem ipsum dolor sit",
              style: TextStyle(
                fontSize: width< 800? width*0.060 : 35,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.onBackground,
              ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            width: double.infinity,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Rhoncus mattis rhoncus urna neque viverra. Duis convallis convallis tellus id interdum velit. Cras fermentum odio eu feugiat pretium nibh ipsum consequat nisl. Sapien nec sagittis aliquam malesuada bibendum arcu. Morbi tristique senectus et netus et malesuada fames ac turpis. Volutpat lacus laoreet non curabitur gravida arcu ac tortor dignissim. Elementum tempus egestas sed sed. Quis hendrerit dolor magna eget est lorem ipsum. Tortor at risus viverra adipiscing at. Ullamcorper velit sed ullamcorper morbi tincidunt ornare.",
              style: TextStyle(
                fontSize: width< 800? width*0.037 : 22,
                height: 1.5,
                color: Theme.of(context).colorScheme.onBackground,

              ),
            ),
          ),
          SizedBox(height: 25,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 0.8,
                color: Colors.grey,
              )
            ),
            child: Image.asset(
              'assets/logos/google.jpg',
              width: width*0.85,
              fit: BoxFit.contain,

            ),
          ),
        ],
      ),
    );
  }
}


