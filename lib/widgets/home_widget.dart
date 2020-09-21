import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kejar_recruitment/constants/colors_const.dart';
import '../widgets/widgets.dart';

class HomeWidget extends StatelessWidget {
  final String name = 'Syahrul';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: mFillColor,
            title: Text('K',
                style: GoogleFonts.montserrat(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: mTitleColor)),
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
              // height: 100,
              // color: Colors.amber,
              child: Column(
                children: [
                  Center(
                    child: Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Halo, $name',
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
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              // height: 80,
              padding: const EdgeInsets.symmetric(vertical: 20),
              margin: const EdgeInsets.symmetric(horizontal: 54),
              width: MediaQuery.of(context).size.width - 100,
              decoration: BoxDecoration(
                  // color: Colors.red[200],
                  // backgroundBlendMode: BlendMode.clear,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Batas waktu:',
                      style: GoogleFonts.montserrat(
                          color: mTitleColor, fontWeight: FontWeight.normal)),
                  SizedBox(
                    width: 10,
                  ),
                  Text('15:35:21',
                      style: GoogleFonts.montserrat(
                          fontSize: 22,
                          color: mTitleColor,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              // color: Colors.amber,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 20, left: 16),
                      child: Text(
                        'Your Next Step',
                        style: GoogleFonts.montserrat(
                            fontSize: 24,
                            color: mTitleColor,
                            fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 25,
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: TestCardWidget(),
          )
        ],
      ),
    );
  }
}
