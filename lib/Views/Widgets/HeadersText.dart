import 'package:clothes_store/Utilis/Constants.dart';
import 'package:flutter/cupertino.dart';

class HeadersText extends StatelessWidget {
  String text;

  HeadersText({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontFamily: 'Roboto', color: WhiteColor, fontSize: 20),
    );
  }
}
