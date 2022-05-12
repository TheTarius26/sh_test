import 'package:flutter/material.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/ui/widgets/gradient_button.dart';

class EntryButtons extends StatelessWidget {
  const EntryButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GradientButton(
            text: 'Login',
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ),
        const SizedBox(width: kPadding),
        Expanded(
          child: GradientButton(
            text: 'Register',
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
          ),
        ),
      ],
    );
  }
}
