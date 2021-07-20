import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomApp extends StatelessWidget {
  const BottomApp({
    Key? key,
    required this.onPressed,
    required this.currentIndex,
  }) : super(key: key);
  final void Function(int newIndex) onPressed;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 10,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => this.onPressed(0),
              icon: Icon(
                this.currentIndex == 0
                    ? CupertinoIcons.smiley_fill
                    : CupertinoIcons.smiley,
                size: 28,
              ),
            ),
            IconButton(
              onPressed: () => this.onPressed(1),
              icon: Icon(
                this.currentIndex == 1
                    ? CupertinoIcons.person_fill
                    : CupertinoIcons.person,
                size: 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
