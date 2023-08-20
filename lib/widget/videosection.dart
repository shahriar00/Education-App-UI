import 'package:flutter/material.dart';

class videosection extends StatelessWidget {
  videosection({super.key});

  List videolist = [
    "Introduction to the flutter",
    "Installing flutter on windows",
    "Setup flutter on windows",
    "Creating our first App"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videolist.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: index == 0?Colors.blueGrey:Color.fromARGB(255, 76, 179, 170),
              shape: BoxShape.circle
            ),
            child: Icon(Icons.play_arrow_rounded,size: 30,color: Colors.white,),
          ),

          title: Text(videolist[index]),
          subtitle: Text("1 hr 10 min"),
        );
      },
    );
  }
}
