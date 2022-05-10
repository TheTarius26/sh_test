import 'package:flutter/material.dart';
import 'package:sh_test/app/common/color.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/common/text_style.dart';

class GradientButton extends StatelessWidget {
  final String text;
  const GradientButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Ink(
        padding: const EdgeInsets.all(kPadding * 0.4),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              gradientColor1,
              gradientColor2,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(kRadiusCircle),
        ),
        child: Text(
          text,
          style: textButton,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
