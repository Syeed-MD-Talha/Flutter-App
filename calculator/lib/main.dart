import 'package:calculator/Button_calculator.dart';
import 'package:calculator/Calculations.dart';
import 'package:calculator/Calculations2.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MyApp());
}

String result = '';
String output = '';
double FontSize = 100, value = 0.0, keep = 0.0;
String stack = '+';

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double cnt = 0;
  double x = 0;
  String ch = '';
  String st = '';
  void change() {
    if (st.length > 8)
      FontSize = 60;
    else if (st.length > 6)
      FontSize = 80;
    else
      FontSize = 100;
  }

  void add() {
    setState(() {
      x += cnt;
      cnt = 0;
      ch = '+';
      st += '+';
      change();
    });
  }

  void minus() {
    setState(() {
      x += cnt;
      cnt = 0;
      ch = '-';
      st += '-';
      change();
    });
  }

  void multiplication() {
    setState(() {
      x += cnt;
      cnt = 0;
      ch = 'x';
      st += 'x';
      change();
    });
  }

  void division() {
    setState(() {
      x += cnt;
      cnt = 0;
      ch = '/';
      st += '/';
      change();
    });
  }

  void mod() {
    setState(() {
      x += cnt;
      cnt = 0;
      ch = '%';
      st += '$x';
      change();
    });
  }

  void root() {
    setState(() {
      x += cnt;
      //cnt = 0;
      cnt = sqrt(cnt);
      ch = '√ ';
      st += '$x';
      change();
    });
  }

  void equal() {
    setState(() {
      if (ch == '+')
        cnt += x;
      else if (ch == '-')
        cnt = x - cnt;
      else if (ch == 'x')
        cnt *= x;
      else if (ch == '/')
        cnt = (x / cnt);
      else if (ch == '%') cnt = x % cnt;
      //else if (ch == '√') cnt = sqrt(x);

      x = 0;
      ch = '';
      st = '$cnt';
      change();
      st = cnt.toStringAsFixed(2);
    });
  }

  void c1() {
    setState(() {
      cnt *= 10;
      cnt += 1;
      st += '1';
      change();
    });
  }

  void c2() {
    setState(() {
      cnt *= 10;
      cnt += 2;
      st += '2';
      change();
    });
  }

  void c3() {
    setState(() {
      cnt *= 10;
      cnt += 3;
      st += '3';
      change();
    });
  }

  void c4() {
    setState(() {
      cnt *= 10;
      cnt += 4;
      st += '4';
      change();
    });
  }

  void c5() {
    setState(() {
      cnt *= 10;
      cnt += 5;
      st += '5';
      change();
    });
  }

  void c6() {
    setState(() {
      cnt *= 10;
      cnt += 6;
      st += '6';
      change();
    });
  }

  void c7() {
    setState(() {
      cnt *= 10;
      cnt += 7;
      st += '7';
      change();
    });
  }

  void c8() {
    setState(() {
      cnt *= 10;
      cnt += 8;
      st += '8';
      change();
    });
  }

  void c9() {
    setState(() {
      cnt *= 10;
      cnt += 9;
      st += '9';
      change();
    });
  }

  void c0() {
    setState(() {
      cnt *= 10;
      st += '0';
      change();
    });
  }

  void cCE() {
    setState(() {
      x = 0;
      cnt = 0;
      st = '';
      change();
    });
  }

  Color black_color = Color(0xFF222222);

  Color Red_color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              st,
              style: TextStyle(color: Colors.white, fontSize: FontSize),
            ),
            Divider(
              color: Colors.white,
              thickness: 0.7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button(
                  button_color: black_color,
                  button_text: 'C',
                  tex_color: Colors.red,
                  fun: cCE,
                ),
                button(
                  button_color: black_color,
                  button_text: '√',
                  tex_color: Colors.green,
                  fun: root,
                ),
                button(
                  button_color: black_color,
                  button_text: '%',
                  tex_color: Colors.green,
                  fun: mod,
                ),
                button(
                  button_color: black_color,
                  button_text: '/',
                  tex_color: Colors.green,
                  fun: division,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button(
                  button_color: black_color,
                  button_text: '7',
                  tex_color: Colors.cyan,
                  fun: c7,
                ),
                button(
                  button_color: black_color,
                  button_text: '8',
                  tex_color: Colors.cyan,
                  fun: c8,
                ),
                button(
                  button_color: black_color,
                  button_text: '9',
                  tex_color: Colors.cyan,
                  fun: c9,
                ),
                button(
                  button_color: black_color,
                  button_text: 'x',
                  tex_color: Colors.green,
                  fun: multiplication,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button(
                  button_color: black_color,
                  button_text: '4',
                  tex_color: Colors.cyan,
                  fun: c4,
                ),
                button(
                  button_color: black_color,
                  button_text: '5',
                  tex_color: Colors.cyan,
                  fun: c5,
                ),
                button(
                  button_color: black_color,
                  button_text: '6',
                  tex_color: Colors.cyan,
                  fun: c6,
                ),
                button(
                  button_color: black_color,
                  button_text: '-',
                  tex_color: Colors.green,
                  fun: minus,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button(
                  button_color: black_color,
                  button_text: '1',
                  tex_color: Colors.cyan,
                  fun: c1,
                ),
                button(
                  button_color: black_color,
                  button_text: '2',
                  tex_color: Colors.cyan,
                  fun: c2,
                ),
                button(
                  button_color: black_color,
                  button_text: '3',
                  tex_color: Colors.cyan,
                  fun: c3,
                ),
                button(
                  button_color: black_color,
                  button_text: '+',
                  tex_color: Colors.green,
                  fun: add,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                button(
                  button_color: black_color,
                  button_text: '.',
                  tex_color: Colors.cyan,
                  fun: division,
                ),
                button(
                  button_color: black_color,
                  button_text: '0',
                  tex_color: Colors.cyan,
                  fun: c0,
                ),
                Big_button(
                    funy: equal,
                    button_color: black_color,
                    button_text: '=',
                    tex_color: Colors.pink),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
