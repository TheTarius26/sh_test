import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sh_test/app/common/color.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/common/path.dart';
import 'package:sh_test/app/common/text_style.dart';
import 'package:sh_test/app/ui/widgets/gradient_button.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              logo(),
              const Spacer(),
              ...welcomeText(),
              const Spacer(flex: 1),
              buttons(),
              const Spacer(),
              terms(),
              const Spacer(flex: 2)
            ],
          ),
        ),
      ),
    );
  }

  RichText terms() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          termsSpan(text: 'By registering, I am aware and understand the\n'),
          termsSpan(
            text: 'Privacy Policy',
            color: primaryColor,
            onTap: () {},
          ),
          termsSpan(text: ' and '),
          termsSpan(
            text: 'Terms & Conditions',
            color: primaryColor,
            onTap: () {},
          ),
        ],
        style: textBody,
      ),
    );
  }

  TextSpan termsSpan(
      {String? text, Color color = Colors.black, void Function()? onTap}) {
    return TextSpan(
      text: text,
      style: textBody.copyWith(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: color,
      ),
      recognizer: TapGestureRecognizer()..onTap = onTap,
    );
  }

  List<Widget> welcomeText() {
    return [
      Text(
        'One more step to access \nall the greatness',
        style: textBody.copyWith(
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: kPadding * 2),
      Text(
        'Let\'s log in or register',
        style: textBody.copyWith(
          fontSize: 12,
        ),
      ),
    ];
  }

  Row buttons() {
    return Row(
      children: const [
        Expanded(
          child: GradientButton(
            text: 'Login',
          ),
        ),
        SizedBox(width: kPadding),
        Expanded(
          child: GradientButton(
            text: 'Register',
          ),
        ),
      ],
    );
  }

  Container logo() {
    return Container(
      margin: const EdgeInsets.only(top: kPadding),
      padding: const EdgeInsets.all(kPadding),
      width: double.infinity,
      child: Image.asset('$assetsImagePath/logo.png'),
    );
  }
}
