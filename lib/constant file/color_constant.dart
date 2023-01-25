import 'package:flutter/material.dart';

class waveconstant extends StatelessWidget {
  List<Color> colors = [
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.redAccent,
    Colors.yellowAccent
  ];
  List<int> duration = [900, 700, 600, 800];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      child: Row(
        children: List<Widget>.generate(
            10,
            (index) => music_wave(
                duration: duration[index % 5], color: colors[index])),
      ),
    );
  }
}

class music_wave extends StatefulWidget {
  music_wave({
    Key? key,
    this.duration,
    this.color,
  }) : super(key: key);
  final int? duration;
  final Color? color;
  @override
  State<music_wave> createState() => _music_waveState();
}

class _music_waveState extends State<music_wave>
    with SingleTickerProviderStateMixin {
  late AnimationController animationcontroler;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    animationcontroler = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1200));
    final curvedAnimation = CurvedAnimation(
      parent: animationcontroler,
      curve: Curves.easeInOutCubic,
    );
    animation = Tween<double>(begin: 0, end: 100).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      });

    animationcontroler.repeat(reverse: true);
  }

  // dispose() {
  //   animationcontroler.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    print(" thai gayu ==========");
    return Container(
      width: 10,
      height: animation.value,
      decoration: BoxDecoration(
          color: widget.color, borderRadius: BorderRadius.circular(5)),
      child: waveconstant(),
    );
  }
}

/*  List<Color> colors = [
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.redAccent,
    Colors.yellowAccent
  ];
  List<int> duration = [900, 700, 600, 800, 500];*/
