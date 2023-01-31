import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../constant file/bottomlist_horizontal.dart';
import 'PlayList.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      bottom();
    });

    super.initState();
  }

  void bottom() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
            height: 295,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0))),
            // color: Colors.red,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    right: 20,
                    left: 20,
                  ),
                  child: Row(
                    children: const [
                      Text(
                        "Recently Played",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Spacer(),
                HorizontalList(),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [Colors.amber, Color(0xFFFDD771), Colors.white])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
//================= 1============================
            Positioned(
              top: 10,
              left: 10,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_2.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            //================= 2
            Positioned(
              top: 30,
              left: 150,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_15.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            //================= 3
            Positioned(
              top: -5,
              right: 5,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_3.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),

            //================= 4
            Positioned(
              top: 100,
              right: -40,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_4.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            Positioned(
              top: 180,
              left: 160,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_6.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 20,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_5.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            //================= 5
            Positioned(
              top: 160,
              right: 30,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_6.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),

            ///================= midal =====================
            Positioned(
              top: 250,
              left: 70,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_16.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            Positioned(
              top: 280,
              left: -60,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_7.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            Positioned(
              top: 280,
              right: -15,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_8.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            Positioned(
              top: 410,
              right: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_9.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),

            ///============= bottom potition ====================================
            Positioned(
              bottom: 300,
              left: -15,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_10.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            Positioned(
              bottom: 160,
              left: 1,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_11.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            Positioned(
              bottom: 220,
              right: 2,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_12.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            Positioned(
              bottom: 190,
              right: 140,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_13.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              left: 110,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 130,
                  width: 130,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_7.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            Positioned(
              bottom: 120,
              right: -50,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_15.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            Positioned(
              bottom: 90,
              right: 50,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_14.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 5,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_4.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            Positioned(
              bottom: 140,
              left: 110,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_16.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),

            Positioned(
              bottom: 5,
              left: -30,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.bottomToTop,
                          duration: const Duration(milliseconds: 200),
                          child: PlayList()));
                },
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/gif_6.gif"),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
