import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  static const routeName = 'more-screen';
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("More Screen"),),
    );
  }
}
