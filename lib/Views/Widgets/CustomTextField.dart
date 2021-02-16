import 'package:clothes_store/Utilis/Constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Function onSave;
  final Function onValidate;
  String data = '';

  CustomTextField({
    @required this.onSave,
    @required this.hint,
    @required this.icon,
    @required this.onValidate,
    this.data,
  });

  String _errorMsg(String str) {
    switch (str) {
      case 'Enter your Name':
        return 'Name is empty !';
      case 'Enter your Email':
        return 'Email is empty !';
      case 'Enter your Password':
        return 'Password is empty !';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        validator: onValidate,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(20),
          ),
          fillColor: ViewColor,
          filled: true,
          prefixIcon: Icon(
            icon,
            color: WhiteColor,
          ),
          hintText: hint,
        ),
        initialValue: data,
        cursorColor: Colors.black,
        obscureText: hint == 'Enter your Password' ? true : false,
        onSaved: onSave,
        style: TextStyle(fontFamily: 'Roboto', color: MainColor),
      ),
    );
  }
}
