import 'package:flutter/material.dart';
import 'package:sh_test/app/common/color.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/common/text_style.dart';
import 'package:sh_test/app/ui/widgets/entry_app_bar.dart';
import 'package:sh_test/app/ui/widgets/field_form.dart';
import 'package:sh_test/app/ui/widgets/gradient_button.dart';

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
                      Text(
                        'Register',
                        style: textStyleTitle,
                      ),
                      const Spacer(),
                      form(),
                      const SizedBox(height: kPadding * 0.5),
                      registerButton(),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Need Help?',
                          style: textStyleBody.copyWith(
                            fontSize: 10,
                            color: Colors.black,
                          ),
                        ),
                      )
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
    return Expanded(
      child: Center(
        child: GradientButton(
          text: 'Next',
          onPressed: () {},
        ),
      ),
    );
  }

  Form form() {
    return Form(
      child: Column(
        children: const [
          FieldForm(
            label: 'Your First Name',
            hintText: 'Example: Budi',
          ),
          SizedBox(height: kPadding * 0.5),
          FieldForm(
            label: 'Your Last Name',
            hintText: 'Example: Santoso',
          ),
          SizedBox(height: kPadding * 0.5),
          FieldForm(
            label: 'Email',
            hintText: 'Example: Budi_santoso@gmail.com',
          ),
          SizedBox(height: kPadding * 0.5),
          FieldForm(
            label: 'Password',
            hintText: 'Example: as73savoier2',
            isPassword: true,
          ),
        ],
      ),
    );
  }
}
