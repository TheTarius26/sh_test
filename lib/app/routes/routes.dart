import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sh_test/app/data/local/user_data.dart';
import 'package:sh_test/app/data/repository/user_repository.dart';
import 'package:sh_test/app/ui/entry/view/entry_page.dart';
import 'package:sh_test/app/ui/home/controller/home_controller.dart';
import 'package:sh_test/app/ui/home/view/home_page.dart';
import 'package:sh_test/app/ui/login/controller/login_controller.dart';
import 'package:sh_test/app/ui/login/view/login_page.dart';
import 'package:sh_test/app/ui/register/controller/register_controller.dart';
import 'package:sh_test/app/ui/register/view/register_page.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const EntryPage(),
  '/login': (context) => ChangeNotifierProvider(
        create: (context) => LoginController(
          UserRepository(
            UserData(),
          ),
        ),
        child: const LoginPage(),
      ),
  '/register': (context) => ChangeNotifierProvider(
        create: (context) => RegisterController(
          UserRepository(
            UserData(),
          ),
        ),
        child: const RegisterPage(),
      ),
  '/home': (context) => ChangeNotifierProvider(
        create: (context) => HomeController(
          UserRepository(
            UserData(),
          ),
        ),
        child: const HomePage(),
      ),
};

const initialRoute = '/';
