import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kejar_recruitment/models/user.dart';
import 'package:kejar_recruitment/screens/wrapper.dart';
import 'package:kejar_recruitment/services/auth.dart';
import 'package:provider/provider.dart';
import './screens/screens.dart';
import 'constants/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final user = false;
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel>.value(
      value: AuthHandler().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kejar Recruitment',
        theme: ThemeData(
            primaryColor: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            scaffoldBackgroundColor: mFillColor),
        home: Wrapper(),
      ),
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
