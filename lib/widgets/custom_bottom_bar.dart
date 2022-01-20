import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.wb_sunny),
            iconSize: 30.0,
            color: Colors.pinkAccent,
            padding: const EdgeInsets.only(left: 28.0),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_circle_down),
            iconSize: 30.0,
            padding: const EdgeInsets.only(left: 28.0),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.explore),
            iconSize: 30.0,
            padding: const EdgeInsets.only(left: 28.0),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_balance_wallet),
            iconSize: 30.0,
            padding: const EdgeInsets.only(left: 28.0),
          ),
        ],
      ),
      color: Colors.white,
    );
  }
}
