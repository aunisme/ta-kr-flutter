import 'package:flutter/material.dart';
import 'package:kejar_recruitment/screens/base.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeWidget(),
    );
  }
}
