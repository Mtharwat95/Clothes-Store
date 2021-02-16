import 'package:clothes_store/Utilis/Constants.dart';

class UserModel {
  String userId;
  String email;
  String name;
  String pic;

  UserModel({this.userId, this.email, this.name, this.pic});

  UserModel.fromjson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    userId = map[UserID];
    email = map[UserEmail];
    name = map[UserName];
    pic = map[UserPic];
  }
  toJson() {
    return {
      UserID: userId,
      UserEmail: email,
      UserName: name,
      UserPic: pic,
    };
  }
}
