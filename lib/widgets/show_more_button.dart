import 'package:flutter/material.dart';

class ShowMoreButton extends StatelessWidget {
  const ShowMoreButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child:Row(
        children: const [
          Text('Show more', style: TextStyle(color: Colors.cyan, fontStyle: FontStyle.italic, fontSize: 12),),
          Icon(Icons.keyboard_arrow_down, size: 18, color: Colors.cyan,)
        ],
      ) ,
    ) ;
  }
}
