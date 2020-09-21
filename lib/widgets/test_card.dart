import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/constants.dart';
import '../screens/screens.dart';

class TestCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => TestScreen()),
        )
      },
      child: Row(
        children: [
          Container(
            height: 350,
            width: MediaQuery.of(context).size.width - 32,
            decoration: BoxDecoration(
                color: mCardTitleColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 7.5, offset: Offset(0, 5))
                ],
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(75)),
                        margin:
                            const EdgeInsets.only(left: 20, top: 25, right: 10),
                        child: SvgPicture.asset(
                            'assets/images/auth-screen-art.svg')),
                    // SizedBox(
                    //   width: 5,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Take some test',
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 150,
                            child: Text(
                              'Complete the test to make sure you get the chance to get the interview.',
                              // softWrap: tr,
                              // maxLines: 5,
                              style: GoogleFonts.montserrat(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   'Take some test',
                    //   style: GoogleFonts.montserrat(
                    //       fontSize: 22,
                    //       color: Colors.white,
                    //       fontWeight: FontWeight.bold),
                    // ),
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      '1 of 2 test has been completed',
                      maxLines: 3,
                      style: GoogleFonts.montserrat(
                          fontSize: 16, color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
