import 'package:clothes_store/Utilis/Constants.dart';
import 'package:clothes_store/Views/Widgets/HeadersText.dart';
import 'package:flutter/material.dart';

import 'CartItem.dart';

class CustomList extends StatelessWidget {
  var listName;

  CustomList({@required this.listName});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: MainColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadersText(text: '$listName : '),
            SizedBox(
              height: height * 0.02,
            ),
            Container(
              child: Row(
                children: [
                  CartItem(),
                  CartItem(),
                ],
              ),
            ),
/*
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CartItem(),
                  CartItem(),
                ],
              ),
            ),
*/
          ],
        ),
      ),
    );
  }
}
