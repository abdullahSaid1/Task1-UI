import 'dart:convert';

class User {
  final String? name;
  final String? phone;
  final String? email;

  final String? password;

  User({
    required this.email,
    required this.name,
    required this.phone,
    required this.password,
  });

  Map<String, dynamic> _toJson() {
    return {'name': name, 'email': email, 'phone': phone, 'password': password};
  }

  factory User.fromJson({required String jsonUser}) {
    dynamic user = jsonDecode(jsonUser);

    return User(
      name: user['name'],
      email: user['email'],
      phone: user['phone'],
      password: user['password'],
    );
  }

  String toJson() => jsonEncode(_toJson());

  @override
  String toString() {
    return _toJson().toString();
  }
}
