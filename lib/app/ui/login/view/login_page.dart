import 'package:flutter/material.dart';
import 'package:sh_test/app/common/color.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/common/path.dart';
import 'package:sh_test/app/common/text_style.dart';
import 'package:sh_test/app/ui/widgets/field_form.dart';
import 'package:sh_test/app/ui/widgets/gradient_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(kPadding),
          decoration: const BoxDecoration(
            gradient: linearAppGradient,
          ),
          child: Column(
            children: [
              appBar(),
              content(),
            ],
          ),
        ),
      ),
    );
  }

  Expanded content() {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(kPadding),
        // color: Colors.white,
        child: Column(
          children: [
            const Spacer(),
            Expanded(
              child: Text(
                'Log In',
                style: textStyleTitle,
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 5,
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const FieldForm(
                      label: 'Email',
                      hintText: 'Example: budi_santoso@gmail.com',
                    ),
                    const SizedBox(height: kPadding * 0.5),
                    const FieldForm(
                      label: 'Password',
                      hintText: 'Example: 821jsunc8s72h',
                    ),
                    forgotPassword(),
                    const SizedBox(height: kPadding),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Expanded(
                    child: GradientButton(text: 'Log In'),
                  ),
                ],
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  TextButton forgotPassword() {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
      ),
      child: Text(
        'Forgot Password?',
        style: textStyleBody.copyWith(
          fontSize: 12,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  Row appBar() {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white70,
              ),
              iconSize: 16,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Image.asset(
            '$assetsImagePath/logo_white.png',
          ),
        ),
        const Spacer()
      ],
    );
  }
}
