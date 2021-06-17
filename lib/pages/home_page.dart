import 'package:bottom_app_custom/pages/widgets/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _rotateButton;
  late final Animation<double> _rotateIcon;
  late final Animation<Color?> _colorChange;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );

    _rotateButton = Tween<double>(begin: -1.0, end: 0.5).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _rotateIcon = Tween(begin: 0.0, end: (math.pi) / 4).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
    _colorChange = ColorTween(begin: Color(0xff6735E7), end: Colors.white)
        .animate(_controller)
          ..addListener(() {
            setState(() {});
          });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -20 * math.sin(_controller.value * math.pi / 2) + 20,
            left: -80 * math.sin(_controller.value * math.pi / 2),
            child: ButtomCustomStack(
              isCompleted: _controller.isCompleted,
              icon: CupertinoIcons.videocam_fill,
              colorBackground: Color(0xffF09190),
            ),
          ),
          Positioned(
            top: -80 * math.sin(_controller.value * math.pi / 2) + 10,
            left: -50 * math.sin(_controller.value * math.pi),
            child: ButtomCustomStack(
              isCompleted: _controller.isCompleted,
              icon: CupertinoIcons.camera_fill,
              colorBackground: Color(0xffBC54F7),
            ),
          ),
          Positioned(
            top: -80 * math.sin(_controller.value * math.pi),
            left: 80 * math.sin((_rotateButton.value) * math.pi),
            child: ButtomCustomStack(
              isCompleted: _controller.isCompleted,
              colorBackground: Color(0xff6735E7),
              icon: CupertinoIcons.photo_fill,
            ),
          ),
          GestureDetector(
            onTap: () {
              if (_controller.status == AnimationStatus.completed) {
                _controller.reverse();
              } else {
                _controller.forward();
              }
            },
            child: Transform.rotate(
              angle: _rotateIcon.value,
              child: ButtomCustomStack(
                colorBackground: _colorChange.value!,
                icon: CupertinoIcons.add,
                isCompleted: _controller.isCompleted,
                isFirst: true,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomApp(),
    );
  }
}
