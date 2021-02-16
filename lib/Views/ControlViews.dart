import 'package:clothes_store/Core/ViewModels/authViewModel.dart';
import 'package:clothes_store/Views/Auth/LoginScreen.dart';
import 'package:clothes_store/Views/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControlViews extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthViewModel>().user != null)
          ? HomeScreen()
          : LoginScreen();
    });
  }
}
