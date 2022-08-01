import 'package:flutter/material.dart';

class TabBarIcon extends StatelessWidget {

  final icon;
  final Color backgroundColor;
  final Color iconColor;
  const TabBarIcon({Key? key, required this.icon, this.backgroundColor = Colors.white70, this.iconColor = Colors.black45}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Icon(icon, color: iconColor, size: 18,),
    );
  }
}
