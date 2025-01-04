class User {
  int? id;
  String username;
  String password;
  String phoneNumber;

  User({
    this.id,
    required this.username,
    required this.password,
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'password': password,
      'phone_number': phoneNumber,
    };
  }

  // Constructor from Map
  User.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        username = map['username'],
        password = map['password'],
        phoneNumber = map['phone_number'];
}
