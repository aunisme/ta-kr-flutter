import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kejar_recruitment/constants/colors_const.dart';
import 'package:kejar_recruitment/screens/wrapper.dart';
import 'package:kejar_recruitment/services/auth.dart';
import 'package:kejar_recruitment/widgets/widgets.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  // final AuthHandler _auth = AuthHandler();
  bool showLogin = true;
  void toggleLogin() {
    setState(() => showLogin = !showLogin);
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin) {
      return LoginWidget(
        toggleLogin: toggleLogin,
      );
    } else {
      return LandingWidget(
        toggleLogin: toggleLogin,
      );
    }
  }
}
