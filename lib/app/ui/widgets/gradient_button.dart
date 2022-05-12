import 'package:flutter/material.dart';
import 'package:sh_test/app/common/color.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/common/text_style.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: kPadding,
          vertical: kPadding,
        ),
        decoration: BoxDecoration(
          gradient: linearAppGradient,
          borderRadius: BorderRadius.circular(kRadiusCircle * 0.75),
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
