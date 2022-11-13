class LoginState {
  final bool isLoading;
  final String username;
  final String password;
  final bool showPassword;

  LoginState({
    this.isLoading = false,
    this.username = "",
    this.password = "",
    this.showPassword = false,
  });

  LoginState copyWith({
    bool? isLoading,
    String? username,
    String? password,
    bool? showPassword,
  }) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      username: username ?? this.username,
      password: password ?? this.password,
      showPassword: showPassword ?? this.showPassword,
    );
  }

  @override
  String toString() {
    return 'LoginState(isLoading: $isLoading, username: $username, password: $password, showPassword: $showPassword)';
  }

  @override
  bool operator ==(covariant LoginState other) {
    if (identical(this, other)) return true;

    return other.isLoading == isLoading &&
        other.username == username &&
        other.password == password &&
        other.showPassword == showPassword;
  }

  @override
  int get hashCode {
    return isLoading.hashCode ^
        username.hashCode ^
        password.hashCode ^
        showPassword.hashCode;
  }
}
