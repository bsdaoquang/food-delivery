import 'package:flutter/material.dart';
import 'package:flutter_learning/constants/app_colors.dart';
import 'package:flutter_learning/widgets/desc_text.dart';
import 'package:flutter_learning/widgets/title_text.dart';

class FoodCardContent extends StatelessWidget {
  final String title;
  double? starCount;
  double commentCount;
  String rate;
  String distance;
  String time;

  FoodCardContent(
      {Key? key,
      required this.title,
      this.commentCount = 1234,
      this.distance = '1.5Km',
      this.rate = 'Normal',
      this.starCount,
      this.time = '32min'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleText(
          text: 'Chinese Side',
          size: 20,
        ),
       const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star, color: AppColors.mainColor, size: 16,),
                Icon(Icons.star, color: AppColors.mainColor, size: 16,),
                Icon(Icons.star, color: AppColors.mainColor, size: 16,),
                Icon(Icons.star, color: AppColors.mainColor, size: 16,),
                Icon(Icons.star, color: AppColors.mainColor, size: 16,),

                DescText(text: '$starCount'),
              ],
            ),

            DescText(text: '$commentCount comments'),
          ],
        ),
        const SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Icon(Icons.circle, color: Colors.orange, size: 20,),
                DescText(text: rate),
              ],
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Icon(Icons.location_pin, color: Colors.redAccent, size: 20,),
                DescText(text: distance),
              ],
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                const Icon(Icons.timer_outlined, color: Colors.orange, size: 20,),
                DescText(text: time)
              ],
            )
          ],
        ),
      ],
    );
  }
}
