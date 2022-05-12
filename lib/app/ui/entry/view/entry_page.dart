import 'package:flutter/material.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/common/text_style.dart';
import 'package:sh_test/app/ui/entry/view/widgets/agreement_text.dart';
import 'package:sh_test/app/ui/entry/view/widgets/entry_buttons.dart';
import 'package:sh_test/app/ui/entry/view/widgets/logo.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              const Logo(),
              const Spacer(),
              ...welcomeText(),
              const Spacer(flex: 1),
              const EntryButtons(),
              const Spacer(),
              const AgreementText(),
              const Spacer(flex: 2)
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> welcomeText() {
    return [
      Text(
        'One more step to access \nall the greatness',
        style: textStyleBody.copyWith(
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: kPadding * 2),
      Text(
        'Let\'s log in or register',
        style: textStyleBody.copyWith(
          fontSize: 12,
        ),
      ),
    ];
  }
}
