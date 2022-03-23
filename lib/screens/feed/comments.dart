import 'package:flutter/material.dart';

class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Colors.black.withOpacity(0.5),
      child: Padding(
        padding: EdgeInsets.only(top: height*0.2),
        child: Dismissible(
          direction: DismissDirection.vertical,
          key: const Key('key'),
          onDismissed: (_) => Navigator.of(context).pop(),
          child: Material(
            borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Divider(
                      thickness: 3,
                      indent: width*0.45,
                      endIndent: width*0.45,
                      color: Colors.grey,
                    ),
                  ),
                ),

                Expanded(
                    //height: MediaQuery.of(context).size.height*0.82,
                  flex: 31,
                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context,index){
                          return CommentCard("name name", "20 mins ago");
                        }
                    )
                ),

                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "Write your comment",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.primary
                          )
                        ),

                        suffixIcon: Icon(Icons.send,),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                            borderSide: BorderSide(width: 1)
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}



Widget CommentCard(String name, String time){
  return Card(
    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
    color: Colors.grey[200],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20))
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30,vertical:15 ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Image.asset("assets/logos/google.jpg",width: 30,),
                ),
              ),
              SizedBox(width: 7,),
              Expanded(
                  flex:10,
                  child: Text(name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700) ,)
              ),
             // SizedBox(width: 2,),
              Expanded(
                  flex:9,
                  child: Text(time,style: TextStyle(color: Colors.grey),)
              ),
              //SizedBox(width: 60,),
              Expanded(
                  flex:2,
                  child: Icon(Icons.more_horiz,color: Colors.grey,)
              ),

            ],
          ),
          SizedBox(height: 10,),
          Text("comment contenue"),
          SizedBox(height: 10,),
          ElevatedButton.icon(
            icon: Icon(Icons.thumb_up_alt_outlined,color: Colors.grey,),
            label: Text("10",style: TextStyle(color: Colors.grey),),
            onPressed: (){},
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(Colors.transparent)
            ),
          ),
        ],
      ),
    ),
  );
}
