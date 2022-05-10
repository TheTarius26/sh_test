import 'package:flutter/material.dart';

const gradientColor1 = Color(0xFF6B2D8F);
const gradientColor2 = Color(0xFFD13D3F);
const primaryColor = gradientColor1;

const linearAppGradient = LinearGradient(
  colors: [
    gradientColor1,
    gradientColor2,
  ],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);
