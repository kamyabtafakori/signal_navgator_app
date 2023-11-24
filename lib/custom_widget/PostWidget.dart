import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget pushSignalDate(String name) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image(
            image: AssetImage('images/$name.png'),
          ),
        ),
      ),
      Text(
        textAlign: TextAlign.center,
        'برای 14 آبان  SafeMoon : سیگنال خرید',
        style: TextStyle(fontSize: 19.5, fontWeight: FontWeight.bold),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                backgroundColor: MaterialStateProperty.all(Colors.red)),
            onPressed: () {},
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 2,
              children: [
                Text(
                  'فروش روی 12,560',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Icon(
                  FontAwesomeIcons.cartArrowDown,
                  size: 14,
                  color: Colors.white,
                )
              ],
            ),
          ),
          SizedBox(width: 10),
          TextButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
                backgroundColor: MaterialStateProperty.all(Colors.green)),
            onPressed: () {},
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 2,
              children: [
                Text(
                  'خرید روی 12,365',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Icon(
                  FontAwesomeIcons.cartArrowDown,
                  size: 14,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      )
    ],
  );
}
