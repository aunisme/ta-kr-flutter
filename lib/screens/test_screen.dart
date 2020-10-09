import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kejar_recruitment/constants/colors_const.dart';
import 'package:kejar_recruitment/widgets/widgets.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mFillColor,
      appBar: AppBar(
        backgroundColor: mFillColor,
        elevation: 0,
      ),
      body: Container(
        // color: Colors.blue[100],
        margin: const EdgeInsets.symmetric(horizontal: 16),
        width: MediaQuery.of(context).size.width - 32,
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.grey[200])],
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue[400],
              ),
              child: Center(
                  child: Text(
                'Test Pengetahuan Umum',
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: otherWhite,
                    fontWeight: FontWeight.bold),
              )),
            ),
            SizedBox(
              height: 10,
            ),
            TimerWidget(),
            SizedBox(
              height: 20,
            ),
            QuestionCard(),
            SizedBox(
              height: 20,
            ),
            OptionButton(option: 'Option 1'),
            OptionButton(option: 'Option 2'),
            OptionButton(option: 'Option 3'),
            OptionButton(option: 'Option 4'),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              minWidth: 200,
              onPressed: () {},
              child: Text('Next'),
            )
          ],
        ),
      ),
    );
  }
}
