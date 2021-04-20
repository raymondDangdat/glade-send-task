import 'package:flutter/material.dart';
import 'package:glade_two/constants/colors.dart';
import 'package:glade_two/screens/home_screen.dart';
import 'package:glade_two/screens/screens.dart';

import 'screens/nav_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Glade',
      theme: ThemeData(
        primaryColor: primaryColor
      ),
      home: NavScreen(),

      routes: {
        NavScreen.routeName: (context) => NavScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SendMoneyScreen.routeName: (context) => SendMoneyScreen(),
        MoreScreen.routeName: (context) => MoreScreen(),
        CardScreen.routeName: (context) => CardScreen(),
      },
    );
  }
}



