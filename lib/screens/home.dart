import 'package:flutter/material.dart';
import 'package:medicare/styles/colors.dart';
import 'package:medicare/tabs/HomeTab.dart';
import 'package:medicare/tabs/ScheduleTab.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

List<Map> navigationBarItems = [
  {'icon': Icons.local_hospital, 'index': 0},
  {'icon': Icons.place, 'index': 1},
  {'icon': Icons.phone, 'index': 2},
  {'icon': Icons.calendar_today, 'index': 3},
];

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void goToSchedule() {
    setState(() {
      _selectedIndex = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      HomeTab(
        onPressedScheduleCard: goToSchedule,
      ),
      ScheduleTab(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(MyColors.primary),
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: SafeArea(
        child: screens[_selectedIndex],
      ),
      bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Color(MyColors.bg01),
    items: <Widget>[
      Icon(Icons.local_hospital, size: 23,color: Color(MyColors.bg01)),
      Icon(Icons.place, size: 23,color: Color(MyColors.bg01),),
      Icon(Icons.phone, size: 23,color: Color(MyColors.bg01)),
      Icon(Icons.calendar_today, size: 23,color: Color(MyColors.bg01)),
    ],
    onTap: (index) {
      //Handle button tap
    },
  ),
      
    );
  }
}
