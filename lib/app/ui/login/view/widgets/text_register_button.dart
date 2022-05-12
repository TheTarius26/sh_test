import 'package:flutter/material.dart';
import 'package:sh_test/app/common/color.dart';
import 'package:sh_test/app/common/text_style.dart';

class TextRegisterButton extends StatelessWidget {
  const TextRegisterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, '/register');
      },
      style: TextButton.styleFrom(
        primary: primaryColor,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        alignment: Alignment.center,
      ),
      child: Text(
        'Don\'t have an account yet? Register now, it\'s free!',
        style: textStyleBody.copyWith(
          fontSize: 10,
          decoration: TextDecoration.underline,
          fontStyle: FontStyle.italic,
          color: Colors.black54,
        ),
      ),
    );
  }
}
