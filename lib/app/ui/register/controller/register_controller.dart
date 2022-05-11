import 'package:flutter/material.dart';
import 'package:sh_test/app/data/repository/user_repository.dart';
import 'package:sh_test/app/exception/user_exception.dart';
import 'package:sh_test/app/model/user.dart';

class RegisterController extends ChangeNotifier {
  final UserRepository _userRepository;

  final formKey = GlobalKey<FormState>();

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  RegisterController(UserRepository userRepository)
      : _userRepository = userRepository;

  void register() async {
    try {
      final user = User(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        email: emailController.text,
        password: passwordController.text,
      );
      await _userRepository.register(user);
    } on UserException {
      rethrow;
    }
  }
}
