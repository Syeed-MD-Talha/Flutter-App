import 'package:calculator/main.dart';
import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final Color button_color;
  final String button_text;
  final Color tex_color;
  final Function fun;

  button({
    required this.button_color,
    required this.button_text,
    required this.tex_color,
    required this.fun,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        fun();
      },
      child: Container(
        child: Text(
          button_text,
          style: TextStyle(fontSize: 30, color: tex_color),
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: button_color,
        //onPrimary: Color(0xFF2F2E2E),
        shape: CircleBorder(),
        padding: EdgeInsets.all(30),
      ),
    );
  }
}

class Big_button extends StatelessWidget {
  final Color button_color;
  final String button_text;
  final Color tex_color;
  final Function funy;

  Big_button({
    required this.button_color,
    required this.button_text,
    required this.tex_color,
    required this.funy,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        funy();
      },
      child: Container(
        height: 80,
        width: 120,
        child: Center(
          child: Text(
            button_text,
            style: TextStyle(fontSize: 30, color: tex_color),
          ),
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: button_color,
        //onPrimary: Color(0xFF2F2E2E),
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
