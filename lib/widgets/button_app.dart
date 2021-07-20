import 'package:flutter/material.dart';

class ButtonCustomStack extends StatelessWidget {
  const ButtonCustomStack({
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
              color: getColor(
                isFirst: _isFirst,
                isCompleted: _isCompleted,
              ),
              size: 30,
            )
          : null,
    );
  }

  Color getColor({required bool isFirst, required bool isCompleted}) {
    if (isFirst) {
      return isCompleted ? Colors.black : Colors.white;
    }
    return isCompleted ? Colors.white : Colors.black;
  }
}
