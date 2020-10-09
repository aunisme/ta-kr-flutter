import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kejar_recruitment/constants/colors_const.dart';

class OptionButton extends StatefulWidget {
  final String option;

  const OptionButton({
    Key key,
    @required this.option,
  }) : super(key: key);

  @override
  _OptionButtonState createState() => _OptionButtonState();
}

class _OptionButtonState extends State<OptionButton> {
  // final String option;

  // _OptionButtonState(this.option);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        onPressed: () {},
        padding: const EdgeInsets.all(20),
        minWidth: 250,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.amber,
        splashColor: Colors.amber[200],
        child: Text(widget.option,
            style: GoogleFonts.montserrat(
                fontSize: 14, color: mTitleColor, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
