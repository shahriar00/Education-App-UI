import 'package:educationapp/screen/homepage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class landingpage extends StatelessWidget {
  const landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.6,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),

                //Second Container.........
                Container(
                  height: MediaQuery.of(context).size.height / 1.6,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 85, 188, 197),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(100))),
                  child: Center(
                    child: Image.asset(
                      "images/edu.png",
                      scale: 0.7,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.66,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 85, 188, 197),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.66,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: 40, bottom: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(100))),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "EDUCATION IS A BACKBONE\nOF A NATION!!",
                        style: GoogleFonts.openSans(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 28),
                      child: Text(
                        "You can learning easily from anywhere using this platform.",
                        style: GoogleFonts.openSans(
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.blueGrey),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 70,
                      width: 180,
                      margin: EdgeInsets.only(left: 50, right: 50),
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(15)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homepage()));
                        },
                        child: Center(
                            child: Text(
                          "Let's Go",
                          style: GoogleFonts.openSans(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
