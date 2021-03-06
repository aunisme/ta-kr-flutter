import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kejar_recruitment/constants/constants.dart';
import 'screens.dart';

class BaseContainer extends StatefulWidget {
  @override
  _BaseContainerState createState() => _BaseContainerState();
}

class _BaseContainerState extends State<BaseContainer> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children.elementAt(_selectedIndex),
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
                label: 
                  'Home',
                ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/notification.svg',
                placeholderBuilder: (BuildContext context) => Container(
                  padding: EdgeInsets.only(bottom: 10),
                ),
              ),
              activeIcon:
                  SvgPicture.asset('assets/icons/notification_active.svg'),
              label:
                'Notification',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/profile.svg'),
                activeIcon: SvgPicture.asset('assets/icons/profile_active.svg'),
                label:
                  'Profile',
            ),
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
