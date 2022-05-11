import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:sh_test/app/model/user.dart';
import 'package:sh_test/app/routes/routes.dart';

void main() {
  Hive.registerAdapter(UserAdapter());
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: initialRoute,
      routes: routes,
    );
  }
}
