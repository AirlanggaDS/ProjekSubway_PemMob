String passwd = '';

String? validateEmail(formEmail) {
  if (formEmail == null || formEmail.isEmpty)
    return 'E-mail address is required';

  return null;
}

String? validatePassword(formPassword) {
  passwd = formPassword;
  if (formPassword == null || formPassword.isEmpty) {
    return 'Password is required';
  }

  return null;
}

String? validatePasswordConf(formPassword) {
  if (formPassword == null || formPassword.isEmpty) {
    return 'Password is required';
  } else if (formPassword != passwd) {
    return 'Password must be same';
  } else {
    return null;
  }
}

String? validateForm(formData) {
  if (formData == null || formData.isEmpty) return 'Please fill this field';

  return null;
}