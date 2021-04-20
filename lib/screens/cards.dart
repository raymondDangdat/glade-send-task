import 'package:flutter/material.dart';
class CardScreen extends StatefulWidget {
  static const routeName = 'card';
  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Card Screen'),),
    );
  }
}
