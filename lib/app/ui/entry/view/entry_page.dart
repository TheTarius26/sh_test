import 'package:flutter/material.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/common/path.dart';
import 'package:sh_test/app/common/text_style.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            logo(),
            const SizedBox(
              height: kPadding,
            ),
            Text(
              'One more step to access all the greatness',
              style: textBody,
            ),
          ],
        ),
      ),
    );
  }

  Widget logo() {
    return Container(
      margin: const EdgeInsets.only(top: kPadding),
      padding: const EdgeInsets.all(kPadding * 2),
      width: double.infinity,
      child: Image.asset('$assetsImagePath/logo.png'),
    );
  }
}
