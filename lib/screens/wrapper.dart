import 'package:flutter/material.dart';
import 'package:kejar_recruitment/models/user.dart';
import 'package:kejar_recruitment/screens/screens.dart';
import 'package:kejar_recruitment/screens/base.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    dynamic user = Provider.of<UserModel>(context);
    // final user = Provider.of(context);
    // final bool user = true;

    // return either the Home or Authenticate widget
    if (user == null) {
      return AuthScreen();
    } else {
      return BaseContainer();
    }
  }
}
