import 'package:flutter/material.dart';
import 'package:flutter_learning/constants/app_colors.dart';

class TitleText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow textOverflow;
  TitleText({Key? key, required this.text, this.color , this.size = 16, this.textOverflow = TextOverflow.ellipsis}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: color, fontSize: size, overflow: textOverflow, fontWeight: FontWeight.w500),);
  }
}
