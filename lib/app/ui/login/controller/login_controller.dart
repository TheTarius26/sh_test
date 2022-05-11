import 'package:flutter/material.dart';
import 'package:sh_test/app/data/repository/user_repository.dart';
import 'package:sh_test/app/enum/login_status.dart';
import 'package:sh_test/app/exception/user_exception.dart';

class LoginController extends ChangeNotifier {
  final UserRepository _userRepository;

  final formKey = GlobalKey<FormState>();

  LoginStatus loginStatus = LoginStatus.loading;
  String loginErrorMessage = '';
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginController(UserRepository userRepository)
      : _userRepository = userRepository;

  void login() async {
    try {
      await _userRepository.login(
        emailController.text,
        passwordController.text,
      );
      loginStatus = LoginStatus.success;
    } on UserException catch (e) {
      loginStatus = LoginStatus.failed;
      loginErrorMessage = e.message;
    }
  }
}
