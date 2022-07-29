import 'package:flutter/material.dart';
import 'package:flutter_learning/constants/app_colors.dart';

class DescText extends StatelessWidget {
  Color? color;
  final String text;
  double size;

  DescText({Key? key, required this.text, this.color, this.size = 13}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: AppColors.descColor, fontSize: size, height: 1.2),);
  }
}
