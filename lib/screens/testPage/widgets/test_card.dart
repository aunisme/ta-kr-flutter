import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/constants.dart';
import '../../screens.dart';

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
            height: 100,
            width: MediaQuery.of(context).size.width - 32,
            decoration: BoxDecoration(
                color: mCardTitleColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey, blurRadius: 7.5, offset: Offset(0, 5))
                ],
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        NetworkImage('https://picsum.photos/250?image=24'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Take some test',
                        style: GoogleFonts.montserrat(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          '1 of 2 test has been completed',
                          style: GoogleFonts.montserrat(
                              fontSize: 14, color: Colors.white),
                        ),
                      )
                    ],
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
