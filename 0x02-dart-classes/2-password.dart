class Password {
   String password = "";

  Password();

  bool isValid() {
    final hasUppercase = password.contains(RegExp(r'[A-Z]'));
    final hasLowercase = password.contains(RegExp(r'[a-z]'));
    final hasNumber = password.contains(RegExp(r'\d'));
    final lengthOk = password.length >= 8 && password.length <= 16;

    return hasUppercase && hasLowercase && hasNumber && lengthOk;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
