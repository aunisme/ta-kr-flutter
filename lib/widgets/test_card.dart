import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kejar_recruitment/constants/constants.dart';

class TestCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String assetLink;
  final Color color;
  final int currentScore = 0;
  // final String route;

  const TestCard({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.assetLink,
    @required this.color,
    // @required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => {
        // Navigator.pushNamed(context, '$route'),
        print('test')
      },
      child: Column(
        children: [
          Container(
            height: 160,
            width: MediaQuery.of(context).size.width - 32,
            decoration: BoxDecoration(
                color: color,
                // boxShadow: [
                //   BoxShadow(
                //       color: Colors.grey, blurRadius: 7.5, offset: Offset(0, 5))
                // ],
                // border: Border.all(
                //     width: 1.0,
                //     style: BorderStyle.solid,
                //     color: Colors.grey[300]),
                borderRadius: BorderRadius.circular(30)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: otherWhite,
                        borderRadius: BorderRadius.circular(55)),
                    margin: const EdgeInsets.only(left: 16, right: 20),
                    child: SvgPicture.asset('$assetLink')),
                // SizedBox(
                //   width: 20,
                // ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 22.0, left: 10, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        height: 60,
                        child: Text(
                          '$title',
                          style: GoogleFonts.montserrat(
                              fontSize: 18,
                              color: mTitleColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(
                      //   height: 30,
                      // ),
                      Container(
                        height: 60,
                        width: 150,
                        child: Text(
                          '$subtitle',
                          // softWrap: tr,
                          // maxLines: 5,
                          style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: mTitleColor,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.grey,

                  width: 70,
                  height: 100,
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: mTitleColor,
                          width: 2.0,
                          style: BorderStyle.solid)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$currentScore',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: mTitleColor,
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Current Score',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                              fontSize: 14, color: mTitleColor))
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
