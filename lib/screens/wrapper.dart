import 'package:flutter/material.dart';
import 'package:kejar_recruitment/screens/screens.dart';
import 'package:kejar_recruitment/screens/base.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final user = Provider.of<User>(context);
    // final user = Provider.of(context);
    final bool user = true;

    // return either the Home or Authenticate widget
    if (!user) {
      return AuthScreen();
    } else {
      return BaseContainer();
    }
  }
}
