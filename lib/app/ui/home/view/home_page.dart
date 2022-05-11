import 'package:flutter/material.dart';
import 'package:sh_test/app/common/color.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/common/text_style.dart';
import 'package:sh_test/app/ui/widgets/app_calendar.dart';
import 'package:table_calendar/table_calendar.dart';

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hi, Rhaka',
                    style: textStyleTitle.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: kPadding * 0.25),
              Text(
                'Current Date: ${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
                style: textStyleBody.copyWith(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: kPadding),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: kPadding * 0.5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(kRadiusCircle),
                ),
                child: const AppCalendar(),
              )
            ],
          ),
        ),
      ),
    );
  }
}