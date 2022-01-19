import 'dart:ui';

import 'package:crypto_font_icons/crypto_font_icon_data.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const DashBoard());
  }
}

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
      height: 220,
      width: double.maxFinite,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              cryptoIcon(),
                              const SizedBox(
                                height: 10,
                              ),
                              cryptoNameSymbol(),
                              const Spacer(),
                              cryptoChange(),
                              const SizedBox(
                                height: 10,
                              ),
                              changeIcon(),
                              const SizedBox(
                                width: 20,
                              )
                            ],
                          ),
                          Row(
                            children: [cryptoAmount()],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

Widget cryptoIcon() {
  return const Padding(
    padding: EdgeInsets.only(left: 15.0),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Icon(
        CryptoFontIcons.BTC,
        color: Colors.amber,
        size: 40,
      ),
    ),
  );
}

Widget cryptoNameSymbol() {
  return Align(
    alignment: Alignment.centerLeft,
    child: RichText(
      text: const TextSpan(
        text: 'Bitcoin',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        children: <TextSpan>[
          TextSpan(
              text: '\nBT',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  );
}

Widget cryptoChange() {
  return Align(
    alignment: Alignment.topRight,
    child: RichText(
      text: const TextSpan(
        text: '+3.67%',
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.green, fontSize: 20),
        children: <TextSpan>[
          TextSpan(
              text: '\n+202.835',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  );
}

Widget changeIcon() {
  return const Align(
      alignment: Alignment.topRight,
      child: Icon(
        Icons.sort,
        color: Colors.green,
        size: 30,
      ));
}

Widget cryptoAmount() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: <Widget>[
          RichText(
            textAlign: TextAlign.left,
            text: const TextSpan(
              text: '\n\$12.279',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 35,
              ),
              children: <TextSpan>[
                TextSpan(
                    text: '\n0.1349',
                    style: TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
