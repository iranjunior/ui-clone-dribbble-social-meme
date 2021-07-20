import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarProfilePage extends StatelessWidget implements PreferredSizeWidget {
  const AppBarProfilePage({Key? key}) : super(key: key);

  get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      centerTitle: false,
      title: IconButton(
        onPressed: () {},
        icon: Icon(
          CupertinoIcons.back,
        ),
      ),
    );
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
