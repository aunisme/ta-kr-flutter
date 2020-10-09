import 'package:countdown_flutter/countdown_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kejar_recruitment/constants/constants.dart';

class TimerWidget extends StatefulWidget {
  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 8,
                    right: 8,
                  ),
                  child: Text('Test ended in:',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          // fontWeight: FontWeight.bold,
                          color: mSubtitleColor)),
                ),
                Container(
                  child: CountdownFormatted(
                    duration: Duration(hours: 12),
                    builder: (context, remaining) => Text(
                      remaining,
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: mSubtitleColor),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: CountdownFormatted(
              duration: Duration(seconds: 30),
              builder: (context, remaining) => Text(
                remaining,
                style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: mSubtitleColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
