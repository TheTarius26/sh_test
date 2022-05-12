import 'package:flutter/material.dart';
import 'package:sh_test/app/common/text_style.dart';

class NeedHelpButton extends StatelessWidget {
  const NeedHelpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Need Help?',
        style: textStyleBody.copyWith(
          fontSize: 10,
          color: Colors.black,
        ),
      ),
    );
  }
}
