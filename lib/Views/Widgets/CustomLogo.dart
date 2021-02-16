import 'package:clothes_store/Utilis/Constants.dart';
import 'package:flutter/material.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //Responsive Ui
      height: MediaQuery.of(context).size.height * 0.3,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image(image: AssetImage('assets/images/logo.jpg')),
          Positioned(
              bottom: 0,
              child: Text(
                'Clothes Store',
                style: TextStyle(
                    fontFamily: 'Pacifico', fontSize: 35, color: WhiteColor),
              ))
        ],
      ),
    );
  }
}
