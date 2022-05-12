import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/ui/login/controller/login_controller.dart';
import 'package:sh_test/app/ui/login/view/widgets/forgot_password.dart';
import 'package:sh_test/app/ui/widgets/field_form.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            const ForgotPassword(),
          ],
        ),
      );
    });
  }
}
