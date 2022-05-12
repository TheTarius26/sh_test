import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sh_test/app/common/text_style.dart';
import 'package:sh_test/app/ui/home/controller/home_controller.dart';

class HomeGreeting extends StatelessWidget {
  const HomeGreeting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, controller, _) {
        return Text(
          'Hi, ${controller.user?.firstName ?? 'Guest'}',
          style: textStyleTitle.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        );
      },
    );
  }
}
