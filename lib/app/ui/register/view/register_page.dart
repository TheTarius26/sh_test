import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sh_test/app/common/color.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/common/text_style.dart';
import 'package:sh_test/app/ui/register/controller/register_controller.dart';
import 'package:sh_test/app/ui/register/view/widgets/register_button.dart';
import 'package:sh_test/app/ui/register/view/widgets/register_form.dart';
import 'package:sh_test/app/ui/widgets/entry_app_bar.dart';
import 'package:sh_test/app/ui/widgets/field_form.dart';
import 'package:sh_test/app/ui/widgets/need_help_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(kPadding),
                  color: Colors.white,
                  child: Column(
                    children: [
                      header(),
                      const Spacer(),
                      const RegisterForm(),
                      const SizedBox(height: kPadding * 0.5),
                      registerButton(),
                      const Spacer(),
                      const NeedHelpButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded registerButton() {
    return const Expanded(
      child: RegisterButton(),
    );
  }

  Text header() {
    return Text(
      'Register',
      style: textStyleTitle,
    );
  }
}
