class Validators {
  static String? validateEmail(value) {
    final RegExp regex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (value.isEmpty) {
      return 'enter email address';
    } else if (!regex.hasMatch(value)) {
      return 'Enter the valid email';
    } else {
      return null;
    }
  }

  static String? validatePassword(value) {
    // print("This is value values $value");
    RegExp regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value.isEmpty) {
      return 'Please enter password';
    } else {
      if (!regex.hasMatch(value)) {
        return 'weak password';
      } else {
        return null;
      }
    }
  }

  static String? validateName(value) {
    if (value.isEmpty) {
      return 'enter your name';
    } else {
      if (value.toString().length < 3) {
        return 'invalid name';
      } else {
        return null;
      }
    }
  }

  static String? validateVerificationField(value) {
    if (value.isEmpty) {
      return '';
    } else {
      return null;
    }
  }

  // static Function(String? value) validateForm{
  //   if (value!.isEmpty) {
  //     return "This field is required";
  //   } else if (value.length < 24 || value.length > 24) {
  //     return 'Card number should have 12 digits';
  //   }
  //   return null;
  // }
}

final validatorBlock = Validators();
