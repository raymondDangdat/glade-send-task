import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glade_two/constants/colors.dart';
import 'package:glade_two/screens/cards.dart';
import 'package:glade_two/screens/send_money_screen.dart';

import 'home_screen.dart';
import 'more_screen.dart';

class SecondNavScreen extends StatefulWidget {
  static const routeName = 'second-nav';
  @override
  _SecondNavScreenState createState() => _SecondNavScreenState();
}

class _SecondNavScreenState extends State<SecondNavScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static  List<Widget> _widgetOptions = <Widget>[
    SendMoneyScreen(),
    Scaffold(body: Center(child: Text('Check Rate', style: TextStyle(color: primaryColor, fontSize: 22.0)),),),
    Scaffold(body: Center(child: Text('Fund Account', style: TextStyle(color: primaryColor, fontSize: 22.0)),),),
    Scaffold(body: Center(child: Text('Cards', style: TextStyle(color: primaryColor, fontSize: 22.0),),),),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,



      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),


      floatingActionButton: new FloatingActionButton(
          elevation: 0.0,
          child:  Center(child: SvgPicture.asset("assets/images/sendwhite.svg")),
          backgroundColor: new Color.fromRGBO(103, 64, 126, 1),
          onPressed: (){}
      ),

      bottomNavigationBar: BottomNavigationBar(

        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/Icon material-home.svg', color: primaryLight,),
            activeIcon: SvgPicture.asset('assets/images/Icon material-home.svg', color: primaryColor,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/money-flow.svg', color: primaryLight,),
            activeIcon: SvgPicture.asset('assets/images/money-flow.svg', color: primaryColor,),
            label: 'Check Rate',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/Group 5930.svg', color: primaryLight,),
            activeIcon: SvgPicture.asset('assets/images/Group 5930.svg', color: primaryColor,),
            label: 'Fund Account',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/payment.svg', color: primaryLight,),
            activeIcon: SvgPicture.asset('assets/images/payment.svg', color: primaryColor,),
            label: 'Cards',
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
