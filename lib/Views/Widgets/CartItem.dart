import 'package:clothes_store/Utilis/Constants.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
      ),
      child: Container(
        height: height * 0.35,
        width: width * 0.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: ViewColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/test.jpg',
              height: height * 0.25,
              width: width,
            ),
          ],
        ),
      ),
    );
  }
}
