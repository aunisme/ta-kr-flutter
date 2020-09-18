import 'package:flutter/material.dart';
import 'package:kejar_recruitment/screens/wrapper.dart';
import 'package:provider/provider.dart';
import './screens/screens.dart';
import 'constants/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final user = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kejar Recruitment',
      theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: mFillColor),
      home: Wrapper(),
    );
    // StreamProvider.value(
    //   value: user,
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'Kejar Recruitment',
    //     theme: ThemeData(
    //         primaryColor: Colors.blue,
    //         visualDensity: VisualDensity.adaptivePlatformDensity,
    //         scaffoldBackgroundColor: mFillColor),
    //     home: Wrapper(),
    //   ),
    // );
  }
}
