import 'package:clothes_store/Utilis/Constants.dart';
import 'package:clothes_store/Views/Widgets/CustomList.dart';
import 'package:clothes_store/Views/Widgets/Departments.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  FirebaseAuth _auth = FirebaseAuth.instance;
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: MainColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: MainColor,
        iconTheme: IconThemeData(
          color: WhiteColor,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 80,
                    height: 80,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/my_image.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Mohamed Tharwat',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Email@hotmail.com',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
/*                setState(() {
                  state = 'Profile';
                  myImage = Icons.person;
                  Navigator.of(myKey.currentContext).pop();
                  myKey.currentState.showSnackBar(SnackBar(content: Text(state)));

                });*/
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
/*                setState(() {
                  state = 'Home';
                  myImage = Icons.home;
                  Navigator.of(myKey.currentContext).pop();
                  myKey.currentState.showSnackBar(SnackBar(content: Text(state)));
                });*/
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('message'),
              onTap: () {
/*                setState(() {
                  state = 'Message';
                  myImage = Icons.message;
                  Navigator.of(myKey.currentContext).pop();
                  myKey.currentState.showSnackBar(SnackBar(content: Text(state)));
                });*/
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('settings'),
              onTap: () {
/*                setState(() {
                  state = 'settings';
                  myImage = Icons.settings;
                  Navigator.of(myKey.currentContext).pop();
                  myKey.currentState.showSnackBar(SnackBar(content: Text(state)));
                });*/
              },
            ),
          ],
        ),
      ),
      body: Container(
        color: MainColor,
        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Departments(),
            SizedBox(
              height: height * 0.05,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  CustomList(
                    listName: 'T-Shirts',
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  CustomList(
                    listName: 'Jackets',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
Container(
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
color: ViewColor,
),
child: TextFormField(
decoration: InputDecoration(
border: InputBorder.none,
prefixIcon: Icon(
Icons.search,
color: WhiteColor,
)),
),
),
SizedBox(
height: height * 0.025,
),
HeadersText(text: 'Categories :'),
Container(
              height: height * 0.1,
              child: ListView.builder(
                itemCount: ShowProductsFor.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container();
                },
              ),
            )
*/
