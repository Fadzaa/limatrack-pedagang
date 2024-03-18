import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/constant.dart';
import '../../../../common/theme.dart';
import '../profile_page/profile_page_view.dart';
import 'home_page_view.dart';


class BottomNavigation extends StatefulWidget {
  BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final tabs = [
    const HomePageView(),
    Container(child: Text("Manage"),),
    Container(child: Text("Chat"),),
    const ProfilePageView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(icHome),
            activeIcon: SvgPicture.asset(icHomeActive),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(icExplore),
            activeIcon: SvgPicture.asset(icExploreActive),
            label: 'Manage',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(icChat),
            activeIcon: SvgPicture.asset(icChatActive),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(icPerson),
            activeIcon: SvgPicture.asset(icPersonActive),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedLabelStyle: tsLabelLarge.copyWith(
            fontWeight: FontWeight.w500,
            color: const Color(0xFF707070).withOpacity(0.5)
        ),
        selectedLabelStyle: tsLabelLarge.copyWith(
          fontWeight: FontWeight.w500,
          color: primaryColor
        ),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
