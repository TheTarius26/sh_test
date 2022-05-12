import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/ui/register/controller/register_controller.dart';
import 'package:sh_test/app/ui/widgets/field_form.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<RegisterController>(
      builder: (context, controller, child) {
        return Form(
          key: controller.formKey,
          child: Column(
            children: [
              FieldForm(
                controller: controller.firstNameController,
                label: 'Your First Name',
                hintText: 'Example: Budi',
              ),
              const SizedBox(height: kPadding * 0.5),
              FieldForm(
                controller: controller.lastNameController,
                label: 'Your Last Name',
                hintText: 'Example: Santoso',
              ),
              const SizedBox(height: kPadding * 0.5),
              FieldForm(
                controller: controller.emailController,
                label: 'Email',
                hintText: 'Example: Budi_santoso@gmail.com',
              ),
              const SizedBox(height: kPadding * 0.5),
              FieldForm(
                controller: controller.passwordController,
                label: 'Password',
                hintText: 'Example: as73savoier2',
                isPassword: true,
              ),
            ],
          ),
        );
      },
    );
  }
}
