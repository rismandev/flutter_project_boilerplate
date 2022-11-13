class LoginModel {
  final String username;
  final String password;

  LoginModel({this.username = "", this.password = ""});

  LoginModel copyWith({String? username, String? password}) {
    return LoginModel(
      username: username ?? this.username,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': username,
      'password': password,
    };
  }

  factory LoginModel.fromMap(Map<String, dynamic> map) {
    return LoginModel(
      username: map['username'] ?? "",
      password: map['password'] ?? "",
    );
  }

  @override
  String toString() => 'LoginModel(username: $username, password: $password)';

  @override
  bool operator ==(covariant LoginModel other) {
    if (identical(this, other)) return true;

    return other.username == username && other.password == password;
  }

  @override
  int get hashCode => username.hashCode ^ password.hashCode;
}

class ResponseLoginModel {
  final String id;
  final String username;
  final String token;

  ResponseLoginModel({
    this.id = "",
    this.username = "",
    this.token = "",
  });

  ResponseLoginModel copyWith({
    String? id,
    String? username,
    String? token,
  }) {
    return ResponseLoginModel(
      id: id ?? this.id,
      username: username ?? this.username,
      token: token ?? this.token,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'username': username,
      'token': token,
    };
  }

  factory ResponseLoginModel.fromMap(Map<String, dynamic> map) {
    return ResponseLoginModel(
      id: map['id'] ?? "",
      username: map['username'] ?? "",
      token: map['token'] ?? "",
    );
  }

  @override
  String toString() =>
      'ResponseLoginModel(id: $id, username: $username, token: $token)';

  @override
  bool operator ==(covariant ResponseLoginModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.username == username && other.token == token;
  }

  @override
  int get hashCode => id.hashCode ^ username.hashCode ^ token.hashCode;
}
