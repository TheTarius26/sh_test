import 'package:flutter/material.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/common/path.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: kPadding),
      padding: const EdgeInsets.all(kPadding),
      width: double.infinity,
      child: Image.asset('$assetsImagePath/logo.png'),
    );
  }
}
