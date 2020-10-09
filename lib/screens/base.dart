import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kejar_recruitment/constants/constants.dart';
import 'package:kejar_recruitment/models/user.dart';
import 'screens.dart';
import 'package:provider/provider.dart';

class BaseContainer extends StatefulWidget {
  @override
  _BaseContainerState createState() => _BaseContainerState();
}

class _BaseContainerState extends State<BaseContainer> {
  PageController _pageController;
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);

    return Scaffold(
      body: PageView(
        children: _screens,
        controller: _pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: mFillColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 15,
                offset: Offset(0, 5))
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/home.svg'),
                activeIcon: SvgPicture.asset('assets/icons/home_active.svg'),
                title: Text(
                  'Home',
                  style: mBottomText,
                )),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/notification.svg',
                placeholderBuilder: (BuildContext context) => Container(
                  padding: EdgeInsets.only(bottom: 10),
                ),
              ),
              activeIcon:
                  SvgPicture.asset('assets/icons/notification_active.svg'),
              title: Text(
                'Notification',
                style: mBottomText,
              ),
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/profile.svg'),
                activeIcon: SvgPicture.asset('assets/icons/profile_active.svg'),
                title: Text(
                  'Profile',
                  style: mBottomText,
                )),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: mBlueColor,
          unselectedItemColor: mSubtitleColor,
          onTap: _onItemTapped,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          showUnselectedLabels: false,
          elevation: 0,
        ),
      ),
    );
  }
}
