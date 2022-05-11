import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 2)
class User {
  @HiveField(0)
  String firstName;
  @HiveField(1)
  String lastName;
  @HiveField(2)
  String email;
  @HiveField(3)
  String password;

  User({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });
}
