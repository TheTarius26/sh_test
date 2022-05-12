import 'package:sh_test/app/data/local/user_data.dart';
import 'package:sh_test/app/model/user.dart';

class UserRepository {
  final UserData _userData;

  UserRepository(UserData userData) : _userData = userData;

  /// get user info from local storage with email
  Future<User?> getUserByEmail(String email) async =>
      await _userData.getUserByEmail(email);

  /// get logged in user info
  Future<User> getLoggedUser() async => await _userData.getLoggedUser();

  /// register new user into local storage
  Future<void> register(User user) async => await _userData.insertUser(user);

  /// login user with email and password
  Future<void> login(String email, String password) async =>
      await _userData.insertLoggedUserWithCredentials(email, password);

  /// logout current logged in user
  Future<void> logout() async => await _userData.deleteLoggedUser();
}
