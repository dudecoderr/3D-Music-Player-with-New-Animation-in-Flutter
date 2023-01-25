import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            image_location: 'assets/played_1.jpg',
            /* function: () {
             Navigator code ==========
            },*/
          ),
          Category(
            image_location: 'assets/played_5.jpg',
          ),
          Category(
            image_location: 'assets/played_3.jpg',
          ),
          Category(
            image_location: 'assets/played_4.jpg',
          ),
          Category(
            image_location: 'assets/played_2.jpg',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location; /*final Function? function;*/

  Category({
    required this.image_location,
    /*this.function,*/
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5, left: 5, top: 10, bottom: 6),
      child: InkWell(
        /* onTap: () {
          function!();
        },*/
        child: Container(
          width: 170.w,
          height: 145.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  image: AssetImage(image_location), fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
