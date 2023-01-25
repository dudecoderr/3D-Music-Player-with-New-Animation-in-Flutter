import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:text_scroll/text_scroll.dart';

import 'Clip_video_screen.dart';

class Artist_video_screen extends StatefulWidget {
  const Artist_video_screen({Key? key}) : super(key: key);

  @override
  State<Artist_video_screen> createState() => _Artist_video_screenState();
}

class _Artist_video_screenState extends State<Artist_video_screen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Colors.red,
            Color(0xFFff6600),
            Color(0xFFff6600),
            Colors.red,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 170),
              child: TextScroll(
                'Woods  *  Woods  *  Woods  *  ',
                velocity: Velocity(pixelsPerSecond: Offset(150, 0)),
                style: TextStyle(
                    fontSize: 60.sp,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Playfair_Display',
                    letterSpacing: 2),
                textAlign: TextAlign.right,
                selectable: false,
              ),
            ),
            Positioned(
              top: 120,
              left: 120,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: const Carousel()));
                },
                child: Container(
                  width: 260.w,
                  height: 360.h,
                  // margin: const EdgeInsets.all(100.0),
                  transform: Matrix4.rotationZ(0.4),
                  decoration: BoxDecoration(
                    // color: Colors.green,
                    image: const DecorationImage(
                        image: AssetImage("assets/gif_14.gif"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(140.0.r),
                      topLeft: Radius.circular(140.0.r),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 35,
              left: 150,
              child: AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText(
                    'Roy',
                    duration: Duration(milliseconds: 2000),
                    textStyle: const TextStyle(
                      fontSize: 60,
                      fontFamily: 'Playfair_Display',
                      color: Colors.yellow,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
                repeatForever: true,
              ),
            ),
            Positioned(
              bottom: 20,
              child: SizedBox(
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    "Countless music videos have been filmed in los angeles, but none of then will truly make your day like happy."
                        .toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 120,
              right: -60,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: const Carousel()));
                },
                child: Container(
                  width: 230.w,
                  height: 150.h,
                  transform: Matrix4.rotationZ(0.2),
                  decoration: const BoxDecoration(
                    // color: Colors.green,
                    image: DecorationImage(
                        image: AssetImage("assets/gif_16.gif"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45, left: 25, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.black,
                        size: 25.sp,
                      ),
                      Text(
                        "Artist",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.black,
                          size: 30.sp,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
