import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<Carousel> {
  final CarouselController _carouselController = CarouselController();
  int _current = 0;

  final List<dynamic> _movies = [
    {
      'image': 'assets/gif_14.gif',
    },
    {
      'image': 'assets/gif_19.gif',
    },
    {
      'image': 'assets/gif_18.gif',
    },
    {
      'image': 'assets/gif_17.gif',
    },
    {
      'image': 'assets/gif_20.gif',
    },
    {
      'image': 'assets/gif_5.gif',
    },
    {
      'image': 'assets/gif_11.gif',
    },
    {
      'image': 'assets/gif_21.gif',
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.west,
            color: Colors.black,
            size: 25.sp,
          ),
        ),
      ),*/
      // backgroundColor: Colors.red,
      body: Stack(
        children: [


          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                _movies[_current]['image'],
                fit: BoxFit.cover,
                repeat: ImageRepeat.repeat,
              )),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(),
            ),
          ),
          Positioned(
            bottom: 20,
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider(
              options: CarouselOptions(
                height: 280.0,
                aspectRatio: 16 / 9,
                viewportFraction: 0.28,
                autoPlay: false,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
              carouselController: _carouselController,
              items: _movies.map((movie) {
                return Builder(
                  builder: (BuildContext context) {
                    return SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 140,
                            width: 100,
                            // margin: const EdgeInsets.only(top: 30),
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              // color: Colors.yellow,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child:
                                Image.asset(movie['image'], fit: BoxFit.cover),
                          ),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0,top: 45.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(icon: Icon(Icons.keyboard_backspace,color: Colors.white,size: 30.0), onPressed: () {  Navigator.of(context).pop(); },),
            ),
          ),
        ],
      ),
    );
  }
}
