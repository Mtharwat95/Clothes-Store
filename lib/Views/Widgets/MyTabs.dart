import 'package:clothes_store/Utilis/Constants.dart';
import 'package:flutter/cupertino.dart';

class MyTabs extends StatelessWidget {
  var icon;
  var selectedIndex;
  var indexNum;
  var tabTitle;

  MyTabs({
    @required this.icon,
    @required this.selectedIndex,
    @required this.indexNum,
    @required this.tabTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          icon,
          color: selectedIndex == indexNum ? ViewColor : WhiteColor,
        ),
        Text(
          tabTitle,
          style: TextStyle(
              color: selectedIndex == indexNum ? ViewColor : WhiteColor,
              fontSize: selectedIndex == indexNum ? 16 : 14),
        ),
      ],
    );
  }
}
