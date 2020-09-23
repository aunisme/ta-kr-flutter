import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kejar_recruitment/constants/constants.dart';
import 'package:kejar_recruitment/widgets/widgets.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            iconTheme: IconThemeData(
              color: mTitleColor,
            ),
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
              // color: Colors.blue,
              height: 150,
              // color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 20, left: 16),
                      child: Text(
                        'Prove you\'re worthy',
                        style: GoogleFonts.montserrat(
                            fontSize: 24,
                            color: mTitleColor,
                            fontWeight: FontWeight.bold),
                      )),
                  Container(
                      width: 250,
                      margin:
                          const EdgeInsets.only(top: 10, left: 16, right: 16),
                      child: Text(
                        'Complete all the test to make sure you get a chance to get to the next step.',
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: mTitleColor,
                            fontWeight: FontWeight.normal),
                      ))
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: TestCard(
              color: Colors.amber,
              assetLink: 'assets/images/auth-screen-art.svg',
              title: 'Pengetahuan Umum',
              subtitle: 'lorem ipsum dolor sit amet.',
            ),
          ),
          SliverToBoxAdapter(
            child: TestCard(
              color: Colors.blue,
              assetLink: 'assets/images/auth-screen-art.svg',
              title: 'Psikotes',
              subtitle: 'lorem ipsum dolor sit amet.',
            ),
          )
        ],
      ),
    );
  }
}
