import 'dart:math';

import 'package:audio_wave/audio_wave.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:text_scroll/text_scroll.dart';

import 'Artist_video_screen.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  //================== wave_progress_bars var=-=========
  final List<double> values = [];

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = CurvedAnimation(
      parent: controller,
      curve: Curves.slowMiddle,
    );

    controller.repeat();
  }

  dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    //================== wave_progress_bars class=-=========
    MediaQueryData queryData = MediaQuery.of(context);
    var rng = new Random();
    for (var i = 0; i < 100; i++) {
      values.add(rng.nextInt(70) * 1.0);
    }
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Colors.red,
            Color(0xFF003d80),
            Color(0xFF003d80),
            Color(0xFF003d80),
            Color(0xFF003d80),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
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
            RotationTransition(
              turns: animation,
              alignment: Alignment.center,
              child: Container(
                  height: 290.h,
                  width: 290.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: const CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage('assets/artis1.png'),
                  )),
            ),
            SizedBox(height: 10.h),

            ///============== navigat page Artist screen ==========
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.bottomToTop,
                        duration: const Duration(milliseconds: 200),
                        child: Artist_video_screen()));
              },
              child: Text(
                "Roy Woods",
                style: TextStyle(
                  fontSize: 22.sp,
                  color: Colors.red,
                  fontFamily: 'Jost-Medium',
                ),
              ),
            ),
            SizedBox(height: 10.h),
            TextScroll(
              'Shot Again * Shot Again * Shot Again * Shot Again * Shot Again',
              velocity: Velocity(pixelsPerSecond: Offset(150, 0)),
              style: TextStyle(
                  fontSize: 32.sp,
                  color: Colors.red,
                  fontFamily: 'Playfair_Display',
                  letterSpacing: 2),
              textAlign: TextAlign.right,
              selectable: false,
            ),
            SizedBox(height: 50.h),

            ///=============== music wave ====================

            Padding(
              padding: const EdgeInsets.only(right: 5, left: 5),
              child: Container(
                // width: 400.w,
                // color: Colors.white,
                child: Center(
                  child: AudioWave(
                    height: 60.h,
                    width: 346.w,
                    spacing: 3,
                    bars: [
                      AudioWaveBar(
                          heightFactor: 0.10, color: Colors.lightBlueAccent),
                      AudioWaveBar(
                          heightFactor: 0.30, color: Colors.greenAccent),
                      AudioWaveBar(
                          heightFactor: 0.70, color: Colors.yellowAccent),
                      AudioWaveBar(
                          heightFactor: 0.40, color: Colors.deepOrange),
                      AudioWaveBar(
                          heightFactor: 0.20, color: Colors.cyanAccent),
                      AudioWaveBar(
                          heightFactor: 0.10, color: Colors.lightBlueAccent),
                      AudioWaveBar(
                          heightFactor: 0.30, color: Colors.greenAccent),
                      AudioWaveBar(
                          heightFactor: 0.70, color: Colors.yellowAccent),
                      AudioWaveBar(
                          heightFactor: 0.40, color: Colors.deepOrange),
                      AudioWaveBar(
                          heightFactor: 0.20, color: Colors.cyanAccent),
                      AudioWaveBar(
                          heightFactor: 0.10, color: Colors.lightBlueAccent),
                      AudioWaveBar(
                          heightFactor: 0.30, color: Colors.greenAccent),
                      AudioWaveBar(
                          heightFactor: 0.70, color: Colors.yellowAccent),
                      AudioWaveBar(
                          heightFactor: 0.40, color: Colors.deepOrange),
                      AudioWaveBar(
                          heightFactor: 0.20, color: Colors.cyanAccent),
                      AudioWaveBar(
                          heightFactor: 0.10, color: Colors.lightBlueAccent),
                      AudioWaveBar(
                          heightFactor: 0.30, color: Colors.greenAccent),
                      AudioWaveBar(
                          heightFactor: 0.70, color: Colors.yellowAccent),
                      AudioWaveBar(
                          heightFactor: 0.40, color: Colors.deepOrange),
                      AudioWaveBar(
                          heightFactor: 0.20, color: Colors.cyanAccent),
                      AudioWaveBar(
                          heightFactor: 0.10, color: Colors.lightBlueAccent),
                      AudioWaveBar(
                          heightFactor: 0.30, color: Colors.greenAccent),
                      AudioWaveBar(
                          heightFactor: 0.70, color: Colors.yellowAccent),
                      AudioWaveBar(
                          heightFactor: 0.40, color: Colors.deepOrange),
                      AudioWaveBar(
                          heightFactor: 0.20, color: Colors.cyanAccent),
                      AudioWaveBar(
                          heightFactor: 0.10, color: Colors.lightBlueAccent),
                      AudioWaveBar(
                          heightFactor: 0.30, color: Colors.greenAccent),
                      AudioWaveBar(
                          heightFactor: 0.70, color: Colors.yellowAccent),
                      AudioWaveBar(
                          heightFactor: 0.40, color: Colors.deepOrange),
                      AudioWaveBar(
                          heightFactor: 0.20, color: Colors.cyanAccent),
                      AudioWaveBar(
                          heightFactor: 0.10, color: Colors.lightBlueAccent),
                      AudioWaveBar(
                          heightFactor: 0.30, color: Colors.greenAccent),
                      AudioWaveBar(
                          heightFactor: 0.70, color: Colors.yellowAccent),
                      AudioWaveBar(
                          heightFactor: 0.40, color: Colors.deepOrange),
                      AudioWaveBar(
                          heightFactor: 0.20, color: Colors.cyanAccent),
                      AudioWaveBar(
                          heightFactor: 0.10, color: Colors.lightBlueAccent),
                      AudioWaveBar(
                          heightFactor: 0.30, color: Colors.greenAccent),
                      AudioWaveBar(
                          heightFactor: 0.70, color: Colors.yellowAccent),
                      AudioWaveBar(
                          heightFactor: 0.40, color: Colors.deepOrange),
                      AudioWaveBar(
                          heightFactor: 0.20, color: Colors.cyanAccent),
                      AudioWaveBar(
                          heightFactor: 0.10, color: Colors.lightBlueAccent),
                      AudioWaveBar(
                          heightFactor: 0.30, color: Colors.greenAccent),
                      AudioWaveBar(
                          heightFactor: 0.70, color: Colors.yellowAccent),
                      AudioWaveBar(
                          heightFactor: 0.40, color: Colors.deepOrange),
                      AudioWaveBar(
                          heightFactor: 0.20, color: Colors.cyanAccent),
                      AudioWaveBar(
                          heightFactor: 0.10, color: Colors.lightBlueAccent),
                      AudioWaveBar(
                          heightFactor: 0.30, color: Colors.greenAccent),
                      AudioWaveBar(
                          heightFactor: 0.70, color: Colors.yellowAccent),
                      AudioWaveBar(
                          heightFactor: 0.40, color: Colors.deepOrange),
                      AudioWaveBar(
                          heightFactor: 0.20, color: Colors.cyanAccent),
                      AudioWaveBar(
                          heightFactor: 0.10, color: Colors.lightBlueAccent),
                      AudioWaveBar(
                          heightFactor: 0.30, color: Colors.greenAccent),
                      AudioWaveBar(
                          heightFactor: 0.70, color: Colors.yellowAccent),
                      AudioWaveBar(
                          heightFactor: 0.40, color: Colors.deepOrange),
                      AudioWaveBar(
                          heightFactor: 0.20, color: Colors.cyanAccent),
                      AudioWaveBar(
                          heightFactor: 0.10, color: Colors.lightBlueAccent),
                      AudioWaveBar(
                          heightFactor: 0.30, color: Colors.greenAccent),
                      AudioWaveBar(
                          heightFactor: 0.70, color: Colors.yellowAccent),
                      AudioWaveBar(
                          heightFactor: 0.40, color: Colors.deepOrange),
                      AudioWaveBar(
                          heightFactor: 0.20, color: Colors.cyanAccent),
                      AudioWaveBar(
                          heightFactor: 0.20, color: Colors.yellowAccent),
                      AudioWaveBar(
                          heightFactor: 0.20, color: Colors.deepOrange),
                    ],
                  ),
                ),
              ),
            ),

            ///============Music icons ===================
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.playlist_add_outlined,
                    size: 30.sp,
                  ),
                  Icon(
                    Icons.skip_previous,
                    size: 30.sp,
                  ),
                  Icon(
                    Icons.play_circle_fill,
                    size: 80.sp,
                  ),
                  Icon(
                    Icons.skip_next,
                    size: 30.sp,
                  ),
                  Icon(
                    Icons.restart_alt,
                    size: 30.sp,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              // padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.list,
                    size: 28.sp,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.bluetooth_audio,
                        size: 25.sp,
                      ),
                      Text("JBL CHARGE3")
                    ],
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 28.sp,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
