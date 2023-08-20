import 'package:educationapp/widget/descriptionsection.dart';
import 'package:educationapp/widget/videosection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class course extends StatefulWidget {
  String img;
  course(this.img);
  //const course({super.key});

  @override
  State<course> createState() => _courseState();
}

class _courseState extends State<course> {
  bool isVideoSection = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              color: Colors.pinkAccent,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFF5F3FF),
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage("images/${widget.img}.png"))),
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.blue,
                    size: 45,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "${widget.img} Course Videos",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Created by Sazid Academy",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "175 Videos",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F3FF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: isVideoSection
                        ? Colors.blueGrey
                        : Colors.blueAccent.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideoSection = true;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Videos",
                          style: GoogleFonts.openSans(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isVideoSection
                        ? Colors.blueGrey
                        : Colors.amberAccent.withOpacity(0.7),
                    //color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideoSection = false;
                        });
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                        child: Text(
                          "Description",
                          style: GoogleFonts.openSans(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            //In this two section video section and description.........

            SizedBox(height: 10,),

            isVideoSection? videosection():description(),
          ],
        ),
      ),
    );
  }
}
