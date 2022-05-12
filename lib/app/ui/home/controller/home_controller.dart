import 'package:flutter/material.dart';
import 'package:sh_test/app/data/repository/user_repository.dart';
import 'package:sh_test/app/model/user.dart';

class HomeController extends ChangeNotifier {
  final UserRepository _userRepository;

  User? user;

  HomeController(UserRepository userRepository)
      : _userRepository = userRepository {
    _userRepository.getLoggedUser().then((user) {
      this.user = user;
      notifyListeners();
    });
  }

  /// Logout the current logged in user
  void logout() async {
    await _userRepository.logout();
  }

  /// get logged in user info
  void getUser() async {
    user = await _userRepository.getLoggedUser();
    notifyListeners();
  }
}
