import 'package:flutter/material.dart';
import 'package:sh_test/app/ui/entry/view/entry_page.dart';
import 'package:sh_test/app/ui/home/view/home_page.dart';
import 'package:sh_test/app/ui/login/view/login_page.dart';
import 'package:sh_test/app/ui/register/view/register_page.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const EntryPage(),
  '/login': (context) => const LoginPage(),
  '/register': (context) => const RegisterPage(),
  '/home': (context) => const HomePage(),
};

const initialRoute = '/home';
