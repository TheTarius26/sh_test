import 'package:flutter/material.dart';
import 'package:sh_test/app/common/text_style.dart';

class CurrentDateText extends StatelessWidget {
  const CurrentDateText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Current Date: ${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year}',
      style: textStyleBody.copyWith(
        fontSize: 14,
        color: Colors.white,
      ),
    );
  }
}
