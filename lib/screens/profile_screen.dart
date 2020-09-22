import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kejar_recruitment/constants/constants.dart';
import 'package:kejar_recruitment/models/user.dart';
import 'package:kejar_recruitment/services/auth.dart';
import 'package:kejar_recruitment/services/database.dart';
import 'package:kejar_recruitment/widgets/widgets.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final AuthHandler _auth = AuthHandler();
  // String name = 'Muhammad Syahrul';
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);

    return StreamBuilder<UserData>(
        stream: FirestoreService(uid: user.uid).userData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            UserData user = snapshot.data;
            String name = '${user.firstName + ' ' + user.lastName}';
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
                    child: Column(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Container(
                                  width: 90,
                                  height: 90,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://avatars3.githubusercontent.com/u/25707032?s=400&u=ec9aa633ea3e79c6e09f617218f0056fc3fe84cc&v=4'),
                                  ),
                                )
                              ],
                            )),
                        Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Column(
                              children: [
                                Text(
                                  '$name',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 18,
                                      color: mTitleColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Container(
                                  height: 80,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  width: MediaQuery.of(context).size.width - 54,
                                  decoration: BoxDecoration(
                                      color: mBlueColor,
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 7.5,
                                            offset: Offset(0, 5))
                                      ],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Applied for: ',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 14,
                                              color: Colors.white70,
                                              fontWeight: FontWeight.normal)),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text('Second Line Maintainer',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  ),
                                )
                              ],
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          height: 10,
                          indent: 16,
                          endIndent: 16,
                          color: Colors.grey[100],
                          thickness: 2,
                        )
                      ],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 350,
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
                          style: GoogleFonts.montserrat(
                              fontSize: 18, color: mTitleColor),
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
          } else {
            return Scaffold(
              body: Container(
                color: Colors.amber,
                height: MediaQuery.of(context).size.height - 32,
                child: LoadingWidget(),
              ),
              // body: CustomScrollView(
              //   slivers: [
              //     SliverAppBar(
              //       brightness: Brightness.light,
              //       backgroundColor: mFillColor,
              //       actions: [
              //         IconButton(
              //           icon: Icon(Icons.error_outline),
              //           onPressed: () => print("info"),
              //           color: Colors.grey,
              //         )
              //       ],
              //     ),

              // SliverToBoxAdapter(
              //   child: Center(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         // Center(child: Container(child: Text('Loading...'))),
              //         LoadingWidget()
              //       ],
              //     ),
              //   ),
              // ),
              // ],
              // ),
            );
          }
        });
  }
}
