import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarHomePage extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHomePage({Key? key}) : super(key: key);

  get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      centerTitle: false,
      title: Text(
        'Memes',
        style: Theme.of(context).textTheme.headline1,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.settings,
          ),
        ),
      ],
    );
  }

  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
