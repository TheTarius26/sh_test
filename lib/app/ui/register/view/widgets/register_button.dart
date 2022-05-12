import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sh_test/app/ui/register/controller/register_controller.dart';
import 'package:sh_test/app/ui/widgets/gradient_button.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<RegisterController>(
        builder: (context, controller, child) {
          return GradientButton(
            text: 'Next',
            onPressed: () {
              if (controller.formKey.currentState!.validate()) {
                controller.register();
                Navigator.pushNamed(context, '/home');
              }
            },
          );
        },
      ),
    );
  }
}
