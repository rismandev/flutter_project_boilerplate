class RegisterState {
  final bool isLoading;
  final String fullName;
  final String emailAddress;
  final String password;
  final bool showPassword;
  final String confirmPassword;
  final bool showConfirmPassword;

  RegisterState({
    this.isLoading = false,
    this.fullName = "",
    this.emailAddress = "",
    this.password = "",
    this.showPassword = false,
    this.confirmPassword = "",
    this.showConfirmPassword = false,
  });

  RegisterState copyWith({
    bool? isLoading,
    String? fullName,
    String? emailAddress,
    String? password,
    bool? showPassword,
    String? confirmPassword,
    bool? showConfirmPassword,
  }) {
    return RegisterState(
      isLoading: isLoading ?? this.isLoading,
      fullName: fullName ?? this.fullName,
      emailAddress: emailAddress ?? this.emailAddress,
      password: password ?? this.password,
      showPassword: showPassword ?? this.showPassword,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      showConfirmPassword: showConfirmPassword ?? this.showConfirmPassword,
    );
  }

  @override
  String toString() {
    return 'RegisterState(isLoading: $isLoading, fullName: $fullName, emailAddress: $emailAddress, password: $password, showPassword: $showPassword, confirmPassword: $confirmPassword, showConfirmPassword: $showConfirmPassword)';
  }

  @override
  bool operator ==(covariant RegisterState other) {
    if (identical(this, other)) return true;

    return other.isLoading == isLoading &&
        other.fullName == fullName &&
        other.emailAddress == emailAddress &&
        other.password == password &&
        other.showPassword == showPassword &&
        other.confirmPassword == confirmPassword &&
        other.showConfirmPassword == showConfirmPassword;
  }

  @override
  int get hashCode {
    return isLoading.hashCode ^
        fullName.hashCode ^
        emailAddress.hashCode ^
        password.hashCode ^
        showPassword.hashCode ^
        confirmPassword.hashCode ^
        showConfirmPassword.hashCode;
  }
}
