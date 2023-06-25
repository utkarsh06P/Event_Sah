class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String phoneNo;
  final String message;

  const UserModel(
      {this.id,
      required this.email,
      required this.fullName,
      required this.message,
      required this.phoneNo});

  toJson() {
    return {
      "fullName": fullName,
      "Email": email,
      "phoneNo": phoneNo,
      "message": message
    };
  }
}
