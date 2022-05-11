import 'package:flutter/material.dart';
import 'package:sh_test/app/common/color.dart';
import 'package:sh_test/app/common/constant.dart';
import 'package:sh_test/app/common/text_style.dart';

class FieldForm extends StatelessWidget {
  final String label, hintText;
  final bool isPassword;
  const FieldForm({
    Key? key,
    required this.label,
    required this.hintText,
    this.isPassword = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: textStyleBody.copyWith(fontSize: 12),
        ),
        const SizedBox(height: kPadding * 0.25),
        Container(
          padding: const EdgeInsets.all(kPadding * 0.1),
          decoration: BoxDecoration(
            gradient: linearAppGradient,
            borderRadius: BorderRadius.circular(kRadiusCircle * 0.5),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                kRadiusCircle * 0.5,
              ),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                contentPadding: const EdgeInsets.all(kPadding * 0.75),
                isDense: true,
              ),
              style: textStyleBody.copyWith(fontSize: 12),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your $label';
                }
                if (isPassword) {
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                }
                if (!value.contains('@')) {
                  return 'Please enter a valid email';
                }
                return null;
              },
            ),
          ),
        ),
      ],
    );
  }
}
