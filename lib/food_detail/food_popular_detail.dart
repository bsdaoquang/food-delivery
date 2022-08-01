import 'package:flutter/material.dart';
import 'package:flutter_learning/widgets/tab_bar_icon.dart';

class FoodPopularDetail extends StatelessWidget {
  const FoodPopularDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(

              child: Container(
                height: 400,
                child: Image.asset('assets/images/food1.jpg', height: 400, fit: BoxFit.cover, width: MediaQuery.of(context).size.width,)),
              ) ,
          Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: Row(
              children: const [
                TabBarIcon(icon: Icons.arrow_back_ios_new)
              ],
            ),)
        ],
      ),
    );
  }
}
