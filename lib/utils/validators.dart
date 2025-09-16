class Validators {
  static String? validatefullName(String? value) {
    if (value == null || value.isEmpty) {
      return "Full Name is required";
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }
    if (value.endsWith("@gmail.com")) {
      return "plese enter a valid email";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "password is required";
    }
    return null;
  }

  static String? validateConfirmPassword(String? value, String originalPassword) {
    if(value != originalPassword){
      return "password do not match";
    }
    return null;
  }
}
