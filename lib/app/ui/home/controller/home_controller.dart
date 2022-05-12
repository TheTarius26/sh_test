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

  void logout() async {
    await _userRepository.logout();
  }

  void getUser() async {
    user = await _userRepository.getLoggedUser();
    notifyListeners();
  }
}
