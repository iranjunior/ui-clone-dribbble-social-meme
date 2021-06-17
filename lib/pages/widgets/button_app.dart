import 'package:flutter/material.dart';


class ButtomCustomStack extends StatelessWidget {
  const ButtomCustomStack({
    Key? key,
    required bool isCompleted,
    required Color colorBackground,
    required IconData icon,
    bool isFirst = false,
  })  : _isCompleted = isCompleted,
        _colorBackground = colorBackground,
        _icon = icon,
        _isFirst = isFirst,
        super(key: key);

  final bool _isCompleted;
  final bool _isFirst;
  final Color _colorBackground;
  final IconData _icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: _colorBackground,
          borderRadius: BorderRadius.all(Radius.circular(60))),
      child: (_isCompleted || _isFirst)
          ? Icon(
              _icon,
              color: _isFirst
                  ? _isCompleted
                      ? Colors.black
                      : Colors.white
                  : _isCompleted
                      ? Colors.white
                      : Colors.black,
              size: 30,
            )
          : null,
    );
  }
}
