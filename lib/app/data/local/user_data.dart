import 'package:hive_flutter/adapters.dart';
import 'package:sh_test/app/exception/user_exception.dart';
import 'package:sh_test/app/model/user.dart';

class UserData {
  Future<User?> getUserByEmail(String email) async {
    await Hive.initFlutter();
    var userBox = await Hive.openBox('users');
    final List<dynamic> userList = userBox.values.toList();

    User? user;
    if (userList.isNotEmpty) {
      user = userList.firstWhere((user) => user!.email == email);
    }

    if (user != null) {
      return user;
    }
    return null;
  }

  Future<void> insertUser(User user) async {
    await Hive.initFlutter();
    var userBox = await Hive.openBox('users');
    userBox.add(user);
  }

  Future<void> insertLoggedUser(String email, String password) async {
    await Hive.initFlutter();
    var userBox = await Hive.openBox('users');
    final user = await getUserByEmail(email);

    if (user != null && user.password == password) {
      userBox.put('loggedUser', user);
    } else {
      throw UserException('Wrong Email or Password');
    }
  }

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
