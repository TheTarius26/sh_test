import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sh_test/app/common/text_style.dart';
import 'package:sh_test/app/enum/register_status.dart';
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
          streamStatus(context, controller);
          return GradientButton(
            text: 'Next',
            onPressed: () {
              onClick(context, controller);
            },
          );
        },
      ),
    );
  }

  void onClick(BuildContext context, RegisterController controller) {
    if (controller.formKey.currentState!.validate()) {
      controller.register();
    }
  }

  void streamStatus(BuildContext context, RegisterController controller) {
    controller.registerStatus.stream.listen((status) {
      if (status == RegisterStatus.success) {
        Navigator.pushReplacementNamed(context, '/home');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Register Success',
              style: textStyleBody.copyWith(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        );
      } else if (status == RegisterStatus.failed) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              controller.registerErrorMessage,
              style: textStyleBody.copyWith(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        );
      }
    });
  }
}
