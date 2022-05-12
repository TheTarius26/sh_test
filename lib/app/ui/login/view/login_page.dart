import 'package:flutter/material.dart';
import 'package:sh_test/app/common/color.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/common/text_style.dart';
import 'package:sh_test/app/ui/login/view/widgets/login_button.dart';
import 'package:sh_test/app/ui/login/view/widgets/login_form.dart';
import 'package:sh_test/app/ui/login/view/widgets/text_register_button.dart';
import 'package:sh_test/app/ui/widgets/entry_app_bar.dart';
import 'package:sh_test/app/ui/widgets/need_help_button.dart';

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
            const LoginForm(),
            loginButton(context),
            const TextRegisterButton(),
            const Spacer(),
            const NeedHelpButton(),
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

  Expanded loginButton(BuildContext context) {
    return const Expanded(
      flex: 2,
      child: Center(
        child: LoginButton(),
      ),
    );
  }
}
