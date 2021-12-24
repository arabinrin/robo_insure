import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:robo_insure/constants/color.dart';
import 'package:robo_insure/screens/home.dart';
import 'package:robo_insure/screens/more.dart';
import 'package:robo_insure/screens/payment.dart';
import 'package:robo_insure/screens/plans.dart';

class MainScreen extends StatefulWidget {
  static const route = '/MainScreen';
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController tabController;
  void onItemCLicked(int index) {
    setState(() {
      _selectedIndex = index;
      tabController.index = _selectedIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          Home(),
          Plans(),
          Payment(),
          More(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(
          fontSize: 10.r,
          fontWeight: FontWeight.w600,
          height: 15 / 10,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 10.r,
          fontWeight: FontWeight.w600,
          height: 15 / 10,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Image.asset(
                _selectedIndex == 0
                    ? 'assets/images/Home.png'
                    : 'assets/images/Home_light.png',
                height: 24.r,
                width: 24.r,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Image.asset(
                _selectedIndex == 1
                    ? 'assets/images/Calendar.png'
                    : 'assets/images/Calendar_light.png',
                height: 24.r,
                width: 24.r,
              ),
              label: 'Plans'),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Image.asset(
                _selectedIndex == 2
                    ? 'assets/images/Send.png'
                    : 'assets/images/Send_light.png',
                height: 24.r,
                width: 24.r,
              ),
              label: 'Payments'),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Image.asset(
                _selectedIndex == 3
                    ? 'assets/images/Category.png'
                    : 'assets/images/Category.png',
                height: 24.r,
                width: 24.r,
              ),
              label: 'More'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: neutral,
        onTap: onItemCLicked,
        elevation: 16,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }
}
