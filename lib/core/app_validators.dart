class AppValidators {
  const AppValidators._();

  String? simpleValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }
}
