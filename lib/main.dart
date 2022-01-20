import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:wallet_dashboard/crypto_data.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';

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
  var cryptoData = CryptoData.getData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                   child: ListView.builder(
// scrollDirection: Axis.horizontal,
                   itemCount: cryptoData.length,
                   itemBuilder: (context, index) {
                     return Container(
                       padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                       height: 220,
                       width: double.maxFinite,
                       child: Card(
                         elevation: 5,
                         child: Container(
                           decoration: const BoxDecoration(
                             border: Border(
                               top: BorderSide(
                                   width: 2.0, 
                                   color: Colors.black
                                   //color: cryptoData[index]['iconColor']),
                               ),
                             ),
                             color: Colors.white,
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(7),
                             child: Stack(children: <Widget>[
                               Align(
                                 alignment: Alignment.centerRight,
                                 child: Stack(
                                   children: <Widget>[
                                     Padding(
                                         padding: const EdgeInsets.only(left: 10, top: 5),
                                         child: Column(
                                           children: <Widget>[
                                             Row(
                                               children: <Widget>[
                                                 cryptoIcon(cryptoData[index]),
                                               const SizedBox(
                                                 height: 10,
                                               ),
                                               cryptoNameSymbol(cryptoData[index]),
                                               const Spacer(),
                                               cryptoChange(cryptoData[index]),
                                               const SizedBox(
                                                 width: 10,
                                               ),
                                               changeIcon(cryptoData[index]),
                                               const SizedBox(
                                                 width: 20,
                                               )
                                             ],
                                           ),
                                           Row(
                                           children: <Widget>[
                                             cryptoAmount(cryptoData[index])
                                           ],
                                         )
                                       ],
                                      ))
                                 ],
                               ),
                             )
                           ]),
                         ),
                       ),
                     ),
                   );
                 }),
           ),
            ],
          ),
    ));
  }
}

Widget cryptoIcon(data) {
  return Padding(
    padding: const EdgeInsets.only(left: 15.0),
    child: Align(
      alignment: Alignment.centerLeft,
      child: Icon(
        data['icon'],
        color: data['iconColor'],
        size: 40,
      ),
    ),
  );
}

Widget cryptoNameSymbol(data) {
  return Align(
    alignment: Alignment.centerLeft,
    child: RichText(
      text: TextSpan(
        //text: 'Bitcoin',
        text: '${data['name']}',
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
        children: <TextSpan>[
          TextSpan(
              text: '\n${data['symbol']}',
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  );
}

Widget cryptoChange(data) {
  return Align(
    alignment: Alignment.topRight,
    child: RichText(
      text: TextSpan(
        text: '${data['change']}',
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.green, fontSize: 20),
        children: <TextSpan>[
          TextSpan(
              text: '\n${data['changeValue']}',
              style: TextStyle(
                  color: data['changeColor'],
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    ),
  );
}

Widget changeIcon(data) {
  return Align(
      alignment: Alignment.topRight,
      child: data['change'].contains('-')
          ? Icon(
              Icons.arrow_circle_down,
              color: data['changeColor'],
              size: 30,
            )
          : Icon(
              Icons.arrow_circle_down,
              color: data['changeColor'],
              size: 30,
            ));
}

Widget cryptoAmount(data) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: <Widget>[
          RichText(
            textAlign: TextAlign.left,
            text: TextSpan(
              text: '\n${data['value']}',
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 35,
              ),
              children: const <TextSpan>[
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
