class RegisterModel {
  final String name;
  final String email;
  final String password;
  final String confirmPassword;

  RegisterModel({
    this.name = "",
    this.email = "",
    this.password = "",
    this.confirmPassword = "",
  });

  RegisterModel copyWith({
    String? name,
    String? email,
    String? password,
    String? confirmPassword,
  }) {
    return RegisterModel(
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'password': password,
      'confirm_password': confirmPassword,
    };
  }

  factory RegisterModel.fromMap(Map<String, dynamic> map) {
    return RegisterModel(
      name: map['name'] ?? "",
      email: map['email'] ?? "",
      password: map['password'] ?? "",
      confirmPassword: map['confirm_password'] ?? "",
    );
  }

  @override
  String toString() {
    return 'RegisterModel(name: $name, email: $email, password: $password, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(covariant RegisterModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.email == email &&
        other.password == password &&
        other.confirmPassword == confirmPassword;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        email.hashCode ^
        password.hashCode ^
        confirmPassword.hashCode;
  }
}

class ResponseRegisterModel {
  final int id;
  final String name;
  final String email;
  final String verifyToken;

  ResponseRegisterModel({
    this.id = 0,
    this.name = "",
    this.email = "",
    this.verifyToken = "",
  });

  ResponseRegisterModel copyWith({
    int? id,
    String? name,
    String? email,
    String? verifyToken,
  }) {
    return ResponseRegisterModel(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      verifyToken: verifyToken ?? this.verifyToken,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'verify_token': verifyToken,
    };
  }

  factory ResponseRegisterModel.fromMap(Map<String, dynamic> map) {
    return ResponseRegisterModel(
      id: map['id'] ?? 0,
      name: map['name'] ?? "",
      email: map['email'] ?? "",
      verifyToken: map['verify_token'] ?? "",
    );
  }

  @override
  String toString() {
    return 'ResponseRegisterModel(id: $id, name: $name, email: $email, verifyToken: $verifyToken)';
  }

  @override
  bool operator ==(covariant ResponseRegisterModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.email == email &&
        other.verifyToken == verifyToken;
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ email.hashCode ^ verifyToken.hashCode;
  }
}
