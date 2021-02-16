import 'package:clothes_store/Utilis/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onClick;

  CustomButton({@required this.text, @required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: ViewColor,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
              color: MainColor, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        onPressed: onClick,
        //TODO Login Validation
        // {
        // if (keepMeLoggedIn == true) {
        //   keepUserLoggedIn();
        // }
        // _validate(context);
        // },
      ),
    );
  }
}
