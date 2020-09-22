class UserModel {
  final String uid;

  UserModel({this.uid});
}

class UserData {
  final String uid;
  final String firstName;
  final String lastName;
  final String nickname;
  final String age;
  final String phone;
  final String email;

  UserData({
    this.uid,
    this.firstName,
    this.lastName,
    this.nickname,
    this.age,
    this.phone,
    this.email,
  });
}
