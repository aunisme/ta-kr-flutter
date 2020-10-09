import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kejar_recruitment/constants/colors_const.dart';
import 'package:kejar_recruitment/widgets/widgets.dart';

class QuestionCard extends StatefulWidget {
  @override
  _QuestionCardState createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // width: 300,
      // height: 400,
      child: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.all(8),
              width: 300,
              child: Center(
                child: Text(
                  'Question 1 of 10',
                  style: GoogleFonts.montserrat(
                      fontSize: 12,
                      // fontWeight: FontWeight.bold,
                      color: mSubtitleColor),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                // color: mFillColor,
                // width: 300,
                // height: 300,
                decoration: BoxDecoration(
                    // color: Colors.amber,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        style: BorderStyle.solid,
                        color: Colors.blue,
                        width: 2)),
                child: Text(
                    'Hippocrates is a service of health condition diagnostics based on evidence-based medicine?',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                        fontSize: 18,
                        color: mTitleColor,
                        fontWeight: FontWeight.bold))),

            // OptionButton(
            //   option: 'Option 1',
            // ),
            // OptionButton(
            //   option: 'Option 2',
            // ),
            // OptionButton(
            //   option: 'Option 3',
            // ),
            // OptionButton(
            //   option: 'Option 4',
            // )
          ],
        ),
      ),
    );
  }
}
