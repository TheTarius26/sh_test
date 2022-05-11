import 'package:sh_test/app/data/local/user_data.dart';
import 'package:sh_test/app/model/user.dart';

class UserRepository {
  final UserData _userData;

  UserRepository(UserData userData) : _userData = userData;

  Future<User?> getUserByEmail(String email) async =>
      await _userData.getUserByEmail(email);

  Future<User> getLoggedUser() async => await _userData.getLoggedUser();

  Future<void> register(User user) async => await _userData.insertUser(user);

  Future<void> login(String email, String password) async =>
      await _userData.insertLoggedUser(email, password);

  Future<void> logout() async => await _userData.deleteLoggedUser();
}
