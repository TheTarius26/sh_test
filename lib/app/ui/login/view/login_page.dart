import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sh_test/app/common/color.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/common/path.dart';
import 'package:sh_test/app/common/text_style.dart';
import 'package:sh_test/app/enum/login_status.dart';
import 'package:sh_test/app/ui/login/controller/login_controller.dart';
import 'package:sh_test/app/ui/login/widgets/login_button.dart';
import 'package:sh_test/app/ui/register/view/register_page.dart';
import 'package:sh_test/app/ui/widgets/entry_app_bar.dart';
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
              const EntryAppBar(
                enablePop: true,
              ),
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
    return Consumer<LoginController>(builder: (context, controller, child) {
      return Form(
        key: controller.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FieldForm(
              controller: controller.emailController,
              label: 'Email',
              hintText: 'Example: budi_santoso@gmail.com',
            ),
            const SizedBox(height: kPadding * 0.5),
            FieldForm(
              controller: controller.passwordController,
              label: 'Password',
              hintText: 'Example: 821jsunc8s72h',
              isPassword: true,
            ),
            forgotPassword(),
          ],
        ),
      );
    });
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
    return const Expanded(
      flex: 2,
      child: Center(
        child: LoginButton(),
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
}
