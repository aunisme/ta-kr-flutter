import 'package:countdown_flutter/countdown_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kejar_recruitment/constants/colors_const.dart';
import 'package:kejar_recruitment/services/database.dart';
import '../widgets/widgets.dart';
import 'package:kejar_recruitment/models/user.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  Future<SharedPreferences> _conf = SharedPreferences.getInstance();

  bool enabled = true;
  int duration = 12;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);

    return StreamBuilder<UserData>(
        stream: FirestoreService(uid: user.uid).userData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            UserData user = snapshot.data;
            return Scaffold(
              body: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    brightness: Brightness.light,
                    backgroundColor: mFillColor,
                    title: Text('K',
                        style: GoogleFonts.montserrat(
                            fontSize: 22,
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
                                margin: const EdgeInsets.only(top: 10),
                                child: Text(
                                  'Halo, ${user.nickname}',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 24,
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
                                      fontSize: 14,
                                      color: mTitleColor,
                                      fontWeight: FontWeight.normal),
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          )
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin:
                                      const EdgeInsets.only(top: 20, left: 16),
                                  child: Text(
                                    'Your Next Step',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 18,
                                        color: mTitleColor,
                                        fontWeight: FontWeight.bold),
                                  )),
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 20, left: 16, right: 16),
                                decoration: BoxDecoration(
                                    // color: Colors.red[200],
                                    // backgroundBlendMode: BlendMode.clear,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Batas waktu:',
                                        style: GoogleFonts.montserrat(
                                            color: mTitleColor,
                                            fontWeight: FontWeight.normal)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    CountdownFormatted(
                                        duration: Duration(seconds: duration),
                                        onFinish: () {
                                          setState(() {
                                            // duration = 0;
                                            // enabled = !enabled;
                                          });
                                        },
                                        builder: (BuildContext contex,
                                            String remaining) {
                                          return Text(remaining,
                                              style: GoogleFonts.montserrat(
                                                  color: mTitleColor,
                                                  fontWeight: FontWeight.bold));
                                        })
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: ActionCard(
                      title: 'Take the test',
                      subtitle: 'Complete to unlock your next step.',
                      assetLink: 'assets/images/auth-screen-art.svg',
                      color: Colors.blue[200],
                      route: '/test',
                      enabled: enabled,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 10,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: ActionCard(
                      title: 'Your Interview',
                      subtitle: 'Complete to unlock your next step.',
                      assetLink: 'assets/images/auth-screen-art.svg',
                      color: Colors.red[200],
                      route: '/interview',
                      enabled: true,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 10,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: ActionCard(
                      title: 'Your Training',
                      subtitle: 'Complete to unlock your next step.',
                      assetLink: 'assets/images/auth-screen-art.svg',
                      color: Colors.green[200],
                      route: '/training',
                      enabled: true,
                    ),
                  ),
                  // SliverToBoxAdapter(
                  //   child: Container(
                  //     // height: 80,
                  //     padding: const EdgeInsets.symmetric(vertical: 20),
                  //     margin: const EdgeInsets.symmetric(horizontal: 54),
                  //     width: MediaQuery.of(context).size.width - 100,
                  //     decoration: BoxDecoration(
                  //         // color: Colors.red[200],
                  //         // backgroundBlendMode: BlendMode.clear,
                  //         borderRadius: BorderRadius.circular(10)),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Text('Batas waktu:',
                  //             style: GoogleFonts.montserrat(
                  //                 color: mTitleColor,
                  //                 fontWeight: FontWeight.normal)),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         Text('15:35:21',
                  //             style: GoogleFonts.montserrat(
                  //                 fontSize: 22,
                  //                 color: mTitleColor,
                  //                 fontWeight: FontWeight.bold))
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            );
          } else {
            return Scaffold(
              body: LoadingWidget(),
            );
          }
        });
  }
}
