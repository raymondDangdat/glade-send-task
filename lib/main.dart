import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glade_two/constants/colors.dart';
import 'package:glade_two/screens/screens.dart';
import 'package:glade_two/screens/splash_screen.dart';

import 'screens/nav_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Glade',
      theme: ThemeData(
        primaryColor: primaryColor,
        fontFamily: "DMSans",
        backgroundColor: bgColor,
      ),
      home: SplashScreen(),

      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        NavScreen.routeName: (context) => NavScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SendMoneyScreen.routeName: (context) => SendMoneyScreen(),
        MoreScreen.routeName: (context) => MoreScreen(),
        CardScreen.routeName: (context) => CardScreen(),
        CryptoCurrency.routeName: (context) => CryptoCurrency(),
        SecondNavScreen.routeName: (context) => SecondNavScreen(),
      },
    );
  }
}



