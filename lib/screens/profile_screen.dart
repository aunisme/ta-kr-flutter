import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kejar_recruitment/constants/constants.dart';
import 'package:kejar_recruitment/services/auth.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final AuthHandler _auth = AuthHandler();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: mFillColor,
            actions: [
              IconButton(
                icon: Icon(Icons.error_outline),
                onPressed: () => print("info"),
                color: Colors.grey,
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              // color: Colors.amber,
              child: Column(
                children: [
                  Center(
                    child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Ini halaman profile',
                          style: GoogleFonts.montserrat(
                              fontSize: 28,
                              color: mTitleColor,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  Center(
                    child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Text(
                          'One more step to join our team',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: mTitleColor,
                              fontWeight: FontWeight.normal),
                        )),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 450,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: 50,
              child: FlatButton(
                splashColor: mTitleColor,
                // minWidth: 100,
                // color: Colors.red[300],
                child: Text(
                  'Sign Out',
                  style:
                      GoogleFonts.montserrat(fontSize: 18, color: mTitleColor),
                ),
                onPressed: () async {
                  await _auth.signOut();
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
