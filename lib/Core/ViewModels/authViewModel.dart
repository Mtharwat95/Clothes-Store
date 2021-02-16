import 'package:clothes_store/Core/Services/FireStoreUser.dart';
import 'package:clothes_store/Model/UserModel.dart';
import 'package:clothes_store/Utilis/Constants.dart';
import 'package:clothes_store/Views/HomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthViewModel extends GetxController {
  final String _logd = 'AuthViewModel';
  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth = FirebaseAuth.instance;
  FacebookLogin _facebookLogin = FacebookLogin();
  String email, password, name;

  Rx<User> _user = Rx<User>();
  get user => _user.value?.email;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void createAccountWithEmailAndPassword() async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((user) async {
        saveUser(user);
      });

      Get.offAll(HomeScreen());
    } catch (e) {
      print('$_logd createAccountWithEmailAndPassword: ${e.toString()}');
      Get.snackbar(
        'Error SignUp account',
        e.printError(),
        colorText: MainColor,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void googleSignInAccount() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    print('$_logd googleUser: ${googleUser}');
    GoogleSignInAuthentication googleSignInAuthentication =
        await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication.idToken,
      accessToken: googleSignInAuthentication.accessToken,
    );

    await _auth.signInWithCredential(credential).then((user) {
      saveUser(user);
      Get.offAll(HomeScreen());
    });
  }

  void facebookSignInMethod() async {
    FacebookLoginResult result = await _facebookLogin.logIn(['email']);

    if (result.accessToken != null) {
      final accessToken = result.accessToken.token;
      if (result.status == FacebookLoginStatus.loggedIn) {
        final faceCredential = FacebookAuthProvider.credential(accessToken);

        await _auth.signInWithCredential(faceCredential).then((user) {
          saveUser(user);
          Get.offAll(HomeScreen());
        });
      }
    }
  }

  void signInWithEmailAndPassword() async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAll(HomeScreen());
    } catch (e) {
      print('$_logd signInWithEmailAndPassword: ${e.toString()}');
      Get.snackbar(
        'Error Login account',
        e.printError(),
        colorText: MainColor,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void saveUser(UserCredential user) async {
    await FireStoreUser().addUserToFireStore(UserModel(
      userId: user.user.uid,
      email: user.user.email,
      name: name == null ? user.user.displayName : name,
      pic: '',
    ));
  }
}
