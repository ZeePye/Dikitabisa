import 'package:flutter/material.dart';

class Accounts extends StatefulWidget {
  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Account',
          style: TextStyle(
            fontSize: 50.0,
            color: Color(0xff68B0AB),
          ),
        ),
      ),
    );
  }
}
