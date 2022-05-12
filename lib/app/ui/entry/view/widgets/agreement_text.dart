import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sh_test/app/common/color.dart';
import 'package:sh_test/app/common/text_style.dart';

class AgreementText extends StatelessWidget {
  const AgreementText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        style: textStyleBody,
      ),
    );
  }

  TextSpan termsSpan(
      {String? text, Color color = Colors.black, void Function()? onTap}) {
    return TextSpan(
      text: text,
      style: textStyleBody.copyWith(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: color,
      ),
      recognizer: TapGestureRecognizer()..onTap = onTap,
    );
  }
}
