import 'package:flutter/material.dart';
class SendMoneyScreen extends StatefulWidget {
  static const routeName = 'send-money';
  @override
  _SendMoneyScreenState createState() => _SendMoneyScreenState();
}

class _SendMoneyScreenState extends State<SendMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Send Money'),),
    );
  }
}