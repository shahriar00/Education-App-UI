import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class description extends StatelessWidget {
  const description({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text(
            "Flutter is an open-source UI software development toolkit created by Google. It's designed to enable developers to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter allows you to create high-quality, fast, and dynamic user interfaces with a focus on performance and expressive design.",
            style: GoogleFonts.openSans(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Course Length",
                style: GoogleFonts.openSans(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
              Spacer(),
              Icon(
                Icons.timer,
                size: 30,
                color: Colors.blue,
              ),
              Text(
                " 26 Hours",
                style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                size: 30,
                color: Colors.amber,
              ),
              Text(
                " 4.9 Rating",
                style: GoogleFonts.openSans(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
