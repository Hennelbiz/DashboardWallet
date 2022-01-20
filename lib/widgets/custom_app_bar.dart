import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final IconData icon;
  final bool bottomBar;

  const CustomAppBar(
      {Key? key,
      this.title = 'Crypto Currency Dashboard',
      this.icon = Icons.menu,
      this.bottomBar = true})
      : super(key: key);

  @override
  //Todo: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 5,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      leading: IconButton(
        icon: Icon(icon),
        color: Colors.black,
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.settings,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
      bottom: PreferredSize(
          child: Column(
            children: [
              bottomBar == true
                  ? moneyValues()
                  : const SizedBox(
                      height: 20.0,
                    )
            ],
          ),
          preferredSize: preferredSize),
    );
  }
}

Widget moneyValues() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      /*FlatButton(
          onPressed: () {},
          child: RichText(
              text: const TextSpan(
                  text: 'A',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)))),*/
      TextButton(
        onPressed: () {},
        child: RichText(
          text: const TextSpan(
            text: '\$6091.12',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            children: [
              TextSpan(
                  text: '\nTotal Value',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
      /*FlatButton(
          onPressed: () {},
          child: RichText(
              text: const TextSpan(
                  text: '',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.green),
                  children: [
                TextSpan(
                    text: '',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold))
              ])))*/
      TextButton(
        onPressed: () {},
        child: RichText(
          text: const TextSpan(
            text: '+13.18',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            children: [
              TextSpan(
                  text: '\n24 Hour',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
      /*FlatButton(
          onPressed: () {},
          child: RichText(
            text: const TextSpan(
                text: '+676.25%',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                children: [
                  TextSpan(
                      text: '\nTotal Gain',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold))
                ]),
          ))*/
      //TextButton(onPressed: (){}, child: RichText(text: TextSpan(text: '', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green), ))
      TextButton(
        onPressed: () {},
        child: RichText(
          text: const TextSpan(
            text: '+676.25%',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            children: [
              TextSpan(
                  text: '\nTotal Gain',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
      
    ],
  );
}
