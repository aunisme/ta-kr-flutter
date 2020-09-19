import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kejar_recruitment/constants/colors_const.dart';
import 'package:kejar_recruitment/screens/wrapper.dart';
import 'package:kejar_recruitment/services/auth.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final AuthHandler _auth = AuthHandler();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: otherWhite,
      appBar: AppBar(
        backgroundColor: otherWhite,
        elevation: 0,
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text('Let\'s get started',
                style: GoogleFonts.montserrat(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: mTitleColor)),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            // color: Colors.amber,
            height: 200,
            width: 300,
            // padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SvgPicture.asset('assets/images/auth-screen-art.svg'),
          ),
          SizedBox(
            height: 200,
          ),
          FlatButton(
            height: 50,
            minWidth: 100,
            splashColor: Colors.black12,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Text('Log In',
                style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            color: mTitleColor,
            onPressed: () async {
              dynamic result = await _auth.signInAnonymous();
              if (result == null) {
                print('error signin');
              } else {
                print("signed in");
                print(result.uid);
              }
            },
          ),
          SizedBox(
            height: 50,
          ),
          Text('PT. Kelola Jasa Artha'),
          SizedBox(
            height: 10,
          ),
          Text('Muhammad Syahrul, 2020'),
        ],
      ),
    );
  }
}
