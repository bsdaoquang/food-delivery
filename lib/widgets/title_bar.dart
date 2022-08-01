import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {

  final String title;
  String desc;

  TitleBar({Key? key, required this.title, required this.desc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: Color(0xff212121)),),
          const SizedBox(width: 20,),
          Text(desc, style: const TextStyle(fontSize: 14, color: Color(0xff676767)),)
        ],
      ),
    );
  }
}
