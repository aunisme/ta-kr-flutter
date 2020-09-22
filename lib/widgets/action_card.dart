import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/constants.dart';
import '../screens/screens.dart';

class TestCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String assetLink;
  final Color color;
  final String route;

  const TestCardWidget({
    Key key,
    @required this.title,
    @required this.subtitle,
    @required this.assetLink,
    @required this.color,
    @required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => {Navigator.pushNamed(context, '$route')},
      child: Row(
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
                border: Border.all(
                    width: 1.0,
                    style: BorderStyle.solid,
                    color: Colors.grey[300]),
                borderRadius: BorderRadius.circular(30)),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            color: otherWhite,
                            borderRadius: BorderRadius.circular(55)),
                        margin:
                            const EdgeInsets.only(left: 20, top: 25, right: 10),
                        child: SvgPicture.asset('$assetLink')),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$title',
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                color: mTitleColor,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
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
                          Container(
                            width: 150,
                            child: Text(
                              '1 of 2 test completed',
                              maxLines: 3,
                              style: GoogleFonts.montserrat(
                                  fontSize: 14, color: mTitleColor),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
