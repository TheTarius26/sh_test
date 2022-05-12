import 'package:flutter/material.dart';
import 'package:sh_test/app/common/color.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/ui/home/view/widgets/current_date_text.dart';
import 'package:sh_test/app/ui/home/view/widgets/home_greeting.dart';
import 'package:sh_test/app/ui/home/view/widgets/logout_button.dart';
import 'package:sh_test/app/ui/widgets/app_calendar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            gradient: linearAppGradient,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              const SizedBox(height: kPadding * 0.25),
              const CurrentDateText(),
              const SizedBox(height: kPadding),
              calendar()
            ],
          ),
        ),
      ),
    );
  }

  Row header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        HomeGreeting(),
        LogoutButton(),
      ],
    );
  }

  Container calendar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kPadding * 0.5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kRadiusCircle),
      ),
      child: const AppCalendar(),
    );
  }
}
