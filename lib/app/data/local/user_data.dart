import 'package:hive_flutter/adapters.dart';
import 'package:sh_test/app/exception/user_exception.dart';
import 'package:sh_test/app/model/user.dart';

class UserData {
  /// get user info from local storage with email
  /// throws [UserException] if user not found
  Future<User?> getUserByEmail(String email) async {
    await Hive.initFlutter();
    final userBox = await Hive.openBox('users');
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
  /// if user already exists, it will throw [UserException]
  Future<void> insertUser(User user) async {
    await Hive.initFlutter();
    final userBox = await Hive.openBox('users');

    final userExist = userBox.values
        .toList()
        .any((userInList) => userInList.email == user.email);

    if (userExist) {
      throw UserException('User already exists');
    }
    userBox.add(user);
    insertLoggedUser(user);
  }

  /// insert logged user into local storage with email and password
  /// if wrong password or email, it will throw [UserException]
  Future<void> insertLoggedUserWithCredentials(
      String email, String password) async {
    await Hive.initFlutter();
    final userBox = await Hive.openBox('users');
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
    final userBox = await Hive.openBox('users');
    userBox.delete('loggedUser');
  }

  /// get logged user info from local storage
  Future<User> getLoggedUser() async {
    await Hive.initFlutter();
    final userBox = await Hive.openBox('users');
    return userBox.get('loggedUser');
  }
}
