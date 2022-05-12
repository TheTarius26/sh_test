import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sh_test/app/data/repository/user_repository.dart';
import 'package:sh_test/app/enum/register_status.dart';
import 'package:sh_test/app/exception/user_exception.dart';
import 'package:sh_test/app/model/user.dart';

class RegisterController extends ChangeNotifier {
  final UserRepository _userRepository;

  final formKey = GlobalKey<FormState>();

  final StreamController<RegisterStatus> registerStatus =
      StreamController<RegisterStatus>();

  String registerErrorMessage = '';

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  RegisterController(UserRepository userRepository)
      : _userRepository = userRepository;

  /// Register a new user
  /// If registration is successful, user will be logged in
  /// If registration is failed, error message will be shown
  void register() async {
    try {
      registerStatus.add(RegisterStatus.loading);
      final user = User(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        email: emailController.text,
        password: passwordController.text,
      );
      await _userRepository.register(user);
      registerStatus.add(RegisterStatus.success);
    } on UserException catch (e) {
      registerStatus.add(RegisterStatus.failed);
      registerErrorMessage = e.message;
    }
  }
}
