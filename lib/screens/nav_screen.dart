import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glade_two/constants/colors.dart';

import 'screens.dart';

class NavScreen extends StatefulWidget {
  static const routeName = 'nav-screen';
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SendMoneyScreen(),
    CardScreen(),
    MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
    ),

      bottomNavigationBar: BottomNavigationBar(

        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/home.svg', color: primaryLight,),
            activeIcon: SvgPicture.asset('assets/images/home.svg', color: primaryColor,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/sendmoney.svg', color: primaryLight,),
            activeIcon: SvgPicture.asset('assets/images/sendmoney.svg', color: primaryColor,),
            label: 'Send Money',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/card.svg', color: primaryLight,),
            activeIcon: SvgPicture.asset('assets/images/card.svg', color: primaryColor,),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/more.svg', color: primaryLight,),
            activeIcon: SvgPicture.asset('assets/images/more.svg', color: primaryColor,),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: primaryLight,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,

        selectedFontSize: 12,
        unselectedFontSize: 10,

      ),
    );
  }
}
