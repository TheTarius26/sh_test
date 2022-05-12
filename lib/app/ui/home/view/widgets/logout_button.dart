import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sh_test/app/ui/home/controller/home_controller.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, controller, child) {
        return IconButton(
          icon: const Icon(
            Icons.logout,
            color: Colors.white,
          ),
          onPressed: () {
            controller.logout();
            Navigator.pushReplacementNamed(context, '/login');
          },
        );
      },
    );
  }
}
