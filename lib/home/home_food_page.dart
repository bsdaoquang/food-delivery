import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_learning/constants/app_colors.dart';
import 'package:flutter_learning/home/food_page_body.dart';
import 'package:flutter_learning/widgets/desc_text.dart';
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
      body: Column(
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

          Container(
            child:  FoodPageBody(),
          ),

          Container(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              Row(
                children: [
                  Container(
                    child: Text('fasf'),
                    decoration: BoxDecoration(
                      color: AppColors.mainColor,

                    ),
                  ),
              
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        TitleText(text: 'Nutritious fruit meal int',),
                        DescText(text: 'With chesee characteristic'),
                        Row(

                          children: [
                            Text('Normal'),
                            Text('17Km'),
                            Text('32min')
                          ],
                        )
                      ],),
                    ),
                  )
                ],
              )
            ],),
          )
        ],
      ),
    );
  }
}
