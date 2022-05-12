import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sh_test/app/common/text_style.dart';
import 'package:sh_test/app/enum/login_status.dart';
import 'package:sh_test/app/ui/login/controller/login_controller.dart';
import 'package:sh_test/app/ui/widgets/gradient_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Consumer<LoginController>(
        builder: (context, controller, child) {
          streamStatus(context, controller);
          return GradientButton(
            text: 'Log In',
            onPressed: () {
              onClick(context, controller);
            },
          );
        },
      ),
    );
  }

  void onClick(BuildContext context, LoginController controller) {
    if (controller.formKey.currentState!.validate()) {
      controller.login();
    }
  }

  void streamStatus(BuildContext context, LoginController controller) {
    controller.loginStatus.stream.listen((status) {
      if (status == LoginStatus.success) {
        Navigator.pushReplacementNamed(context, '/home');
      } else if (status == LoginStatus.failed) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              controller.loginErrorMessage,
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
