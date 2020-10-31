import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kejar_recruitment/constants/constants.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                          'Ini halaman notifikasi',
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
        ],
      ),
    );
  }
}
