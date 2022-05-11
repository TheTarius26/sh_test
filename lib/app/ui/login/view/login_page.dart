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
              appBar(context),
              content(context),
            ],
          ),
        ),
      ),
    );
  }

  Flexible content(BuildContext context) {
    return Flexible(
      child: Container(
        padding: const EdgeInsets.all(kPadding),
        color: Colors.white,
        child: Column(
          children: [
            const Spacer(),
            header(),
            const Spacer(),
            form(),
            loginButton(context),
            registerButton(),
            needHelpButton(),
          ],
        ),
      ),
    );
  }

  Expanded header() {
    return Expanded(
      child: Text(
        'Log In',
        style: textStyleTitle,
      ),
    );
  }

  Expanded needHelpButton() {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(primary: primaryColor),
        child: Text(
          'Need Help?',
          style: textStyleBody.copyWith(
            color: Colors.black54,
            fontSize: 10,
          ),
        ),
      ),
    );
  }

  Widget form() {
    return Form(
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
        ],
      ),
    );
  }

  Expanded registerButton() {
    return Expanded(
      child: TextButton(
        onPressed: () {},
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
      ),
    );
  }

  Expanded loginButton(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: GradientButton(
              text: 'Log In',
              onPressed: () {
                Navigator.pushReplacementNamed(context, '');
              },
            ),
          ),
        ],
      ),
    );
  }

  TextButton forgotPassword() {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
        primary: primaryColor,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        'Forgot Password?',
        style: textStyleBody.copyWith(
          fontSize: 10,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }

  Row appBar(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
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
