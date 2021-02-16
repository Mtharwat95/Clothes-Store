import 'package:clothes_store/Core/ViewModels/authViewModel.dart';
import 'package:clothes_store/Utilis/Constants.dart';
import 'package:clothes_store/Views/Auth/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widgets/CustomButton.dart';
import '../Widgets/CustomLogo.dart';
import '../Widgets/CustomTextField.dart';
import '../Widgets/ScreenTitle.dart';

// ignore: must_be_immutable
class SignUpScreen extends GetWidget<AuthViewModel> {
  String LOGD = "SignUpScreen";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  // String _email, _password;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: MainColor,
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(top: height * 0.02, left: width * 0.03),
                  child: GestureDetector(
                    onTap: () {
                      Get.off(LoginScreen());
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: WhiteColor,
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.07,
                ),
                ScreenTitle(
                  title: 'Create an Account',
                ),
              ],
            ),
            CustomLogo(),
            SizedBox(
              height: height * 0.05,
            ),
            CustomTextField(
              hint: 'Enter your Name',
              icon: Icons.perm_identity,
              onSave: (value) {
                controller.name = value;
              },
              onValidate: (value) {
                if (value == null) {
                  print('error');
                }
              },
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextField(
              hint: 'Enter your Email',
              icon: Icons.email,
              onSave: (value) {
                controller.email = value;
              },
              onValidate: (value) {
                if (value == null) {
                  print('error');
                }
              },
            ),
            SizedBox(
              height: height * 0.02,
            ),
            CustomTextField(
              hint: 'Enter your Password',
              icon: Icons.lock,
              onSave: (value) {
                controller.password = value;
              },
              onValidate: (value) {
                if (value == null) {
                  print('error');
                }
              },
            ),
            SizedBox(
              height: height * 0.05,
            ),
            CustomButton(
              text: 'Register',
              onClick: () {
                _formKey.currentState.save();

                if (_formKey.currentState.validate()) {
                  controller.createAccountWithEmailAndPassword();
                }
              },
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Do you have an account ? ",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                GestureDetector(
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    // Navigator.pushReplacementNamed(context, LoginScreen.id);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
