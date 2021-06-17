import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomApp extends StatelessWidget {
  const BottomApp({
    Key? key,
  }) : super(key: key);

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
            Icon(
              CupertinoIcons.smiley,
              size: 28,
            ),
            Icon(
              CupertinoIcons.person,
              size: 28,
            )
          ],
        ),
      ),
    );
  }
}
