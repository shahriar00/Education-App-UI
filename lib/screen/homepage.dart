import 'package:educationapp/widget/coursedetails.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    //Category Names as List..........

    List catNames = [
      "Category",
      "Classes",
      "Free Courses",
      "Book Store",
      "Live Courses",
      "Leaderboard"
    ];

    List<Color> catColors = [
      Color(0xFFFFCF2F),
      Color(0xFF6FE08D),
      Color(0xFF61BDFD),
      Color(0xFFFC7C7F),
      Color(0xFFCB84FB),
      Color(0xFF78E667),
    ];

    List<Icon> catIcons = [
      Icon(
        Icons.category,
        color: Colors.white,
        size: 30,
      ),
      Icon(
        Icons.video_library,
        color: Colors.white,
        size: 30,
      ),
      Icon(
        Icons.assignment,
        color: Colors.white,
        size: 30,
      ),
      Icon(
        Icons.store,
        color: Colors.white,
        size: 30,
      ),
      Icon(
        Icons.play_circle_fill,
        color: Colors.white,
        size: 30,
      ),
      Icon(
        Icons.emoji_events,
        color: Colors.white,
        size: 30,
      ),
    ];

    List imgList = ["Dart", "Flutter", "Python", "C", "JavaScript", "Java"];
    List videoList = ["175", "44", "170", "100", "180", "150"];

    return Scaffold(
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 25,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications_active,
                      size: 25,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3, top: 15),
                  child: Text(
                    "HI! Learner",
                    style: GoogleFonts.openSans(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),

                //Search Bar.........

                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Search here......",
                        border: InputBorder.none,
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.6)),
                        prefixIcon: Icon(Icons.search)),
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20, left: 15, right: 15),
              child: Column(
                children: [
                  GridView.builder(
                    itemCount: catNames.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, childAspectRatio: 1.1),
                    itemBuilder: ((context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: catColors[index],
                                shape: BoxShape.circle),
                            child: Center(
                              child: catIcons[index],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            catNames[index],
                            style: GoogleFonts.openSans(
                              color: Colors.black.withOpacity(0.7),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      );
                    }),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Courses",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                    itemCount: imgList.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio:
                            (MediaQuery.of(context).size.height - 50 - 25) /
                                (4 * 240),
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    itemBuilder: ((context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => course(imgList[index])));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFF5F3FF)),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Image.asset(
                                  "images/${imgList[index]}.png",
                                  width: 100,
                                  height: 100,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                imgList[index],
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                "${videoList[index]} Videos",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ))
        ],
      ),

      //Bottombar...........

      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          selectedItemColor: Colors.pinkAccent,
          unselectedItemColor: Colors.grey,
          selectedFontSize: 18,
          iconSize: 32,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment), label: "Courses"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Wishlist"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
          ]),
    );
  }
}
