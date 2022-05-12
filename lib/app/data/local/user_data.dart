import 'package:hive_flutter/adapters.dart';
import 'package:sh_test/app/exception/user_exception.dart';
import 'package:sh_test/app/model/user.dart';

class UserData {
  /// get user info from local storage with email
  Future<User?> getUserByEmail(String email) async {
    await Hive.initFlutter();
    var userBox = await Hive.openBox('users');
    final List<dynamic> userList = userBox.values.toList();

    User? user;
    if (userList.isNotEmpty) {
      try {
        user = userList.firstWhere((user) => user!.email == email);
      } catch (e) {
        throw UserException('User not found');
      }
    }

    if (user != null) {
      return user;
    }
    return null;
  }

  /// input [User] into local storage
  Future<void> insertUser(User user) async {
    await Hive.initFlutter();
    var userBox = await Hive.openBox('users');
    if (userBox.containsKey(user.email)) {
      throw UserException('User already exists');
    }
    userBox.add(user);
    insertLoggedUser(user);
  }

  /// insert logged user into local storage with email and password
  Future<void> insertLoggedUserWithCredentials(
      String email, String password) async {
    await Hive.initFlutter();
    var userBox = await Hive.openBox('users');
    final user = await getUserByEmail(email);

    if (user != null && user.password == password) {
      userBox.put('loggedUser', user);
    } else {
      throw UserException('Wrong Email or Password');
    }
  }

  /// insert logged user info from local storage with [User] object
  Future<void> insertLoggedUser(User user) async {
    await Hive.initFlutter();
    var userBox = await Hive.openBox('users');
    userBox.put('loggedUser', user);
  }

  /// delete logged user from local storage
  Future<void> deleteLoggedUser() async {
    await Hive.initFlutter();
    var userBox = await Hive.openBox('users');
    userBox.delete('loggedUser');
  }

  Future<User> getLoggedUser() async {
    await Hive.initFlutter();
    var userBox = await Hive.openBox('users');
    return userBox.get('loggedUser');
  }
}
