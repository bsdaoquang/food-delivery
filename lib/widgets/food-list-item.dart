
import 'package:flutter/material.dart';

class FoodListItem extends StatelessWidget {

  final String title;
  final String desc;
  final String rate;
  final String distance;
  final String  time;

  const FoodListItem({Key? key, required this.title, required this.desc, required this.rate, required this.distance, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        children: [
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(image: AssetImage('assets/images/food1.jpg'), fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xff212121), overflow: TextOverflow.ellipsis),),
                   Text(desc, style: const TextStyle(color: Colors.black54, fontStyle: FontStyle.italic),),
                  const SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 8),
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              color: Colors.orange,
                            ),
                          ),
                          Text(rate)
                        ],
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children:  [
                         const Icon(Icons.location_pin, color: Colors.blueAccent, size: 16,),
                        Text(distance)
                      ],),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          const Icon(Icons.timer_outlined, color: Colors.orange, size: 16,),
                          Text(time)
                        ],
                      )
                  ],)
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
