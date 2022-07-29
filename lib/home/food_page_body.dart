import 'package:flutter/material.dart';
import 'package:flutter_learning/constants/app_colors.dart';
import 'package:flutter_learning/home/food_card_content.dart';
import 'package:flutter_learning/widgets/title_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;

  //khởi tạo giá trị
  //Lấy giá trị màn hình hiện tại
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  //remove listener
  @override
  void dispose () {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext) {
    return Container(
      height: 300,
      child: PageView.builder(controller: pageController, itemCount: 5, itemBuilder: (context, position){
        return _buildPageItem(position);
      }),
    );
  }

  Widget _buildPageItem (int index){

    //chưa biết dùng để làm gì
    Matrix4 matrix = new Matrix4.identity();

    if(index == _currPageValue.floor()){
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    }else if(index == _currPageValue.floor() + 1){
      var currScale = _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
          child: Container(
            height: 200,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.mainColor,
              image: const DecorationImage(image: AssetImage('assets/images/food1.jpg'), fit: BoxFit.cover)
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            padding:const EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 8,
                  offset: Offset(0, 2)
                )
              ]
            ),
            child: FoodCardContent(title: 'Chinese Side', starCount: 5, commentCount: 1234, rate: 'Normal', distance: '1.7Km', time: '32min',),
          ),
        )
        ]
      ),
    );
  }
}

