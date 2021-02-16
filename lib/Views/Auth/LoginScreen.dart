import 'package:clothes_store/Core/ViewModels/authViewModel.dart';
import 'package:clothes_store/Utilis/Constants.dart';
import 'package:clothes_store/Views/Auth/SignupScreen.dart';
import 'package:clothes_store/Views/Widgets/CustomButton.dart';
import 'package:clothes_store/Views/Widgets/CustomButtonSocial.dart';
import 'package:clothes_store/Views/Widgets/CustomLogo.dart';
import 'package:clothes_store/Views/Widgets/CustomTextField.dart';
import 'package:clothes_store/Views/Widgets/ScreenTitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  String LOGD = "LoginScreen";

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // String _email, _password;

  bool isAdmin = false;

  String adminPassword = 'Admin1234';

  bool keepMeLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: MainColor,
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              ScreenTitle(
                title: 'Login to your Account',
              ),
              CustomLogo(),
              SizedBox(
                height: height * 0.03,
              ),
              CustomTextField(
                hint: 'Enter your Email',
                icon: Icons.email,
                onSave: (value) {
                  controller.email = value;
                },
                onValidate: (value) {
                  if (value == null) {
                    print('Error');
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Theme(
                      data: ThemeData(unselectedWidgetColor: Colors.white),
                      child: Checkbox(
                          checkColor: ViewColor,
                          activeColor: MainColor,
                          value: keepMeLoggedIn,
                          onChanged: (value) {
                            // setState(() {
                            //   keepMeLoggedIn = value;
                            // });
                          }),
                    ),
                    Text(
                      'Remember Me',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ],
                ),
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
                height: height * 0.04,
              ),
              CustomButton(
                text: 'Login with Email',
                onClick: () {
                  _formKey.currentState.save();

                  if (_formKey.currentState.validate()) {
                    controller.signInWithEmailAndPassword();
                  }
                },
              ),
              SizedBox(
                height: height * 0.01,
              ),
              CustomButtonSocial(
                  text: 'Login with Google',
                  imageName: 'assets/images/google.png',
                  onPress: () {
                    controller.googleSignInAccount();
                  }),
              SizedBox(
                height: height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ? ",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  GestureDetector(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 16),
                    ),
                    onTap: () {
                      //TODO Move to Register Screen
                      Get.to(SignUpScreen());
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
