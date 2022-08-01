import 'package:flutter/material.dart';
import 'package:flutter_learning/home/food_card_content.dart';
import 'package:flutter_learning/widgets/show_more_button.dart';
import 'package:flutter_learning/widgets/tab_bar_icon.dart';
import 'package:flutter_learning/widgets/title_bar.dart';

class FoodPopularDetail extends StatelessWidget {
  const FoodPopularDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              bottom: 10,
              right: 0,
              child: Container(
                height: 400,
                child: Image.asset('assets/images/food1.jpg', height: 400, fit: BoxFit.cover, width: MediaQuery.of(context).size.width,)),
              ) ,
          Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                TabBarIcon(icon: Icons.arrow_back_ios_new),
                TabBarIcon(icon: Icons.shopping_cart)
              ],
            ),),
          Positioned(
            left: 0,
            right: 0,
            top: 350,
            bottom: 0,
            child: Container(
              padding:const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FoodCardContent(title: 'Biriani', commentCount: 123.4, distance: '1.7 Km', rate: 'Normal', starCount: 5, time: '32min',),
                  const SizedBox(height: 20,),
                  TitleBar(title: 'Introduce'),
                  const SizedBox(height: 20,),
                  const Text(
                    'The default parameter is a way to set default values for function parameters a value is no passed in (ie. it is undefined ). '
                        'In a function, Ii a parameter is not provided, then its value becomes undefined . '
                        'In this case, the default value that we specify is applied by the compiler',
                    style: TextStyle(overflow: TextOverflow.fade), textAlign: TextAlign.justify, maxLines: 4, overflow: TextOverflow.ellipsis,),
                  const ShowMoreButton()
                ],
              )
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            height: 100,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(color: Colors.black12,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 80,
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:const [
                         Icon(Icons.remove, size: 16,),
                         Text('0'),
                         Icon(Icons.add, size: 16,)
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const Text('\$0.08 Add to cart', style: TextStyle(color: Colors.white),),
                  )
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
