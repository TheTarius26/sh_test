import 'package:flutter/material.dart';
import 'package:sh_test/app/common/path.dart';

class EntryAppBar extends StatelessWidget {
  const EntryAppBar({
    Key? key,
    this.enablePop = false,
  }) : super(key: key);

  final bool enablePop;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        enablePop
            ? Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white70,
                    ),
                    iconSize: 16,
                  ),
                ),
              )
            : const Spacer(),
        Expanded(
          flex: 3,
          child: Image.asset(
            '$assetsImagePath/logo_white.png',
          ),
        ),
        const Spacer()
      ],
    );
  }
}
