import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/constants.dart';

class ProfileWidget extends StatefulWidget {
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/250?image=9'),
                  backgroundColor: Colors.transparent,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Muhammad Syahrul",
                            style: GoogleFonts.montserrat(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text("Candidate",
                            style: GoogleFonts.montserrat(
                                fontSize: 14, fontWeight: FontWeight.normal)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 150, top: 30),
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                  color: mCardTitleColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 7.5,
                        offset: Offset(0, 5))
                  ],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      bottomLeft: Radius.circular(50))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      'Applied for',
                      style: GoogleFonts.montserrat(
                          fontSize: 14, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 8.0),
                    child: Text(
                      'Second Line Maintener',
                      style: GoogleFonts.montserrat(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
          Container(
            height: 300.0,
            margin: EdgeInsets.only(left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 16, top: 16),
                  child: Text(
                    "Your next step",
                    style: GoogleFonts.montserrat(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: mTitleColor),
                    maxLines: 2,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
