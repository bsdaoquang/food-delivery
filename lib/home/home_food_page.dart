import 'package:flutter/material.dart';
import 'package:flutter_learning/constants/app_colors.dart';
import 'package:flutter_learning/home/food_page_body.dart';
import 'package:flutter_learning/widgets/desc_text.dart';
import 'package:flutter_learning/widgets/food-list-item.dart';
import 'package:flutter_learning/widgets/title_bar.dart';
import 'package:flutter_learning/widgets/title_text.dart';
class HomeFoodPage extends StatefulWidget {
  const HomeFoodPage({Key? key}) : super(key: key);

  @override
  State<HomeFoodPage> createState() => _HomeFoodPageState();
}

class _HomeFoodPageState extends State<HomeFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffe9e9e9),
        child: SingleChildScrollView(

          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(children: [
                  Expanded(child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleText(text: 'Banglades', size: 20, color: AppColors.mainColor),
                       Row(children:[
                          DescText(text: 'Narshingdi'),
                         const Icon(Icons.arrow_drop_down_rounded, color: Color(0xff212121), size: 18,)
                       ],)
                    ],),
                  )),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.mainColor
                      ),
                      padding: const EdgeInsets.all(5),

                      child:const Icon(Icons.search, color: Colors.white,),
                    ),
                  )
                ],),
              ),
              const FoodPageBody(),
              const SizedBox(height: 20,),
              TitleBar(title: 'Popular', desc: 'Food pairing'),
              const SizedBox(height: 20,),
              Container(
                height: 500,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index){
                  return Container(
                    child: const FoodListItem(title: 'Nutritious fluid meal', desc: 'With chinese characteristics', rate: 'Normal', distance: '1.7 Km', time: '32 min',),
                  );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
