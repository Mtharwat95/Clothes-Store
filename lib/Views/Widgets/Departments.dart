import 'package:clothes_store/Utilis/Constants.dart';
import 'package:flutter/material.dart';

class Departments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          child: myColumn('assets/images/man.png', 'Males'),
          onTap: () {},
        ),
        GestureDetector(
          child: myColumn('assets/images/woman.png', 'Females'),
          onTap: () {},
        ),
        GestureDetector(
          child: myColumn('assets/images/children.png', "Children's"),
          onTap: () {},
        ),
      ],
    );
  }

  Widget myColumn(image, name) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Image.asset(
              image,
              color: ViewColor,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 3,
              ),
              child: Text(
                name,
                style: TextStyle(
                  color: WhiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//TODO with rounded circle
/*
Widget myColumn(image, name) {
  return Container(
    width: 85,
    height: 85,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      color: ViewColor,
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Image.asset(
              image,
              color: WhiteColor,
            ),
            Text(
              name,
              style: TextStyle(
                color: WhiteColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}*/
