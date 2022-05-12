import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sh_test/app/data/repository/user_repository.dart';
import 'package:sh_test/app/enum/login_status.dart';
import 'package:sh_test/app/exception/user_exception.dart';

class LoginController extends ChangeNotifier {
  final UserRepository _userRepository;

  final formKey = GlobalKey<FormState>();

  StreamController<LoginStatus> loginStatus = StreamController<LoginStatus>()
    ..add(LoginStatus.init);
  String loginErrorMessage = '';

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginController(UserRepository userRepository)
      : _userRepository = userRepository;

  void login() async {
    try {
      loginStatus.add(LoginStatus.loading);
      await _userRepository.login(
        emailController.text,
        passwordController.text,
      );
      loginStatus.add(LoginStatus.success);
    } on UserException catch (e) {
      loginStatus.add(LoginStatus.failed);
      loginErrorMessage = e.message;
    }
  }
}
