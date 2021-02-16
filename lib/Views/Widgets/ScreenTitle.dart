import 'package:clothes_store/Utilis/Constants.dart';
import 'package:flutter/cupertino.dart';

class ScreenTitle extends StatelessWidget {
  final String title;

  ScreenTitle({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.02,
        ),
        child: Text(
          title,
          style:
              TextStyle(fontFamily: 'Roboto', fontSize: 35, color: WhiteColor),
        ),
      ),
    );
  }
}
