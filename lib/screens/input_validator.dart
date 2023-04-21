class InputValidator {
  static String? emailValidator(String value) {
    if (value.isEmpty) {
      return "please enter your email";
    }
    return null;
  }

   passwordValidator(value) {
    if (value!.isEmpty) {
      return "please enter your password";
    }
    return null;
  }
}
