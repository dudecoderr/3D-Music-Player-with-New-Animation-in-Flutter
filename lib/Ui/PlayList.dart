import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text/model.dart';
import 'package:flutter_circular_text/circular_text/widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import '../constant file/PlaysongList_Constant.dart';
import 'SongScreen.dart';

class PlayList extends StatefulWidget {
  const PlayList({Key? key}) : super(key: key);

  @override
  State<PlayList> createState() => _PlayListState();
}

class _PlayListState extends State<PlayList> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;
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
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color(0xFF5ae717),
            Colors.black,
            Colors.black,
            Colors.red,
            Colors.red,
            Colors.red,
            Colors.amber,
            Colors.green,
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              top: 50,
              left: 3,
              child: RotationTransition(
                turns: animation,
                alignment: Alignment.center,
                child: Container(
                    height: 325.h,
                    width: 325.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                        border: Border.all(color: Colors.black, width: 3)),
                    child: CircularText(
                      children: [
                        TextItem(
                          text: Text(
                            "Roy Woods-Sonic Boom *".toUpperCase(),
                            style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'Playfair_Display',
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          space: 8,
                          startAngle: -90,
                          startAngleAlignment: StartAngleAlignment.center,
                          direction: CircularTextDirection.clockwise,
                        ),
                        TextItem(
                          text: Text(
                            "Roy Woods-Sonic Boom *".toUpperCase(),
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontFamily: 'Playfair_Display',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          space: 8,
                          startAngle: 90,
                          startAngleAlignment: StartAngleAlignment.center,
                          direction: CircularTextDirection.clockwise,
                        ),
                      ],
                      radius: 120,
                      position: CircularTextPosition.inside,
                      // backgroundPaint: Paint()..color = Colors.grey.shade200,
                    )),
              ),
            ),
            Positioned(
              top: 98,
              left: 52,
              child: Container(
                  height: 240.h,
                  width: 240.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      border: Border.all(color: Colors.black, width: 3)),
                  child: const CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage('assets/artis1.png'),
                  )),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45, left: 25, right: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                        size: 25.sp,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.white,
                          size: 30.sp,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.only(top: 365, right: 20, left: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 382,
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: PlaySong.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            type:
                                                PageTransitionType.bottomToTop,
                                            duration: const Duration(
                                                milliseconds: 200),
                                            child: SongScreen()));
                                  },
                                  child: Container(
                                    height: 70.h,
                                    // color: Colors.yellowAccent,
                                    margin: const EdgeInsets.only(bottom: 10),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 45.h,
                                          width: 45.h,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black, width: 2),
                                            // color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Icon(
                                            Icons.play_arrow,
                                            size: 25.sp,
                                          ),
                                        ),
                                        //=============== navigat screen =================
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 20, left: 20),
                                          child: GestureDetector(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  PlaySong[index].titles,
                                                  style: TextStyle(
                                                      fontFamily: "Jost",
                                                      fontSize: 20.sp,
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                SizedBox(
                                                  height: 4.h,
                                                ),
                                                Text(
                                                  PlaySong[index].songtypes,
                                                  style: TextStyle(
                                                      fontSize: 15.sp,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          PlaySong[index].time,
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
