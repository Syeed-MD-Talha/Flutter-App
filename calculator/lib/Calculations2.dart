import 'package:calculator/Calculations.dart';
import 'package:flutter/material.dart';
import 'Calculations.dart';

calculations obj = calculations();
String temp = obj.Print();

class calculations2 extends StatefulWidget {
  @override
  State<calculations2> createState() => _calculations2State();
}

class _calculations2State extends State<calculations2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        temp,
        style: TextStyle(color: Colors.white, fontSize: 40),
      ),
    );
  }
}
