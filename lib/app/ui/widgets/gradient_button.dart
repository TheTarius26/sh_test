import 'package:flutter/material.dart';
import 'package:sh_test/app/common/color.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/common/text_style.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        padding: const EdgeInsets.all(kPadding * 0.4),
        decoration: BoxDecoration(
          gradient: linearAppGradient,
          borderRadius: BorderRadius.circular(kRadiusCircle),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kPadding,
          ),
          child: Text(
            text,
            style: textStyleButton,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
