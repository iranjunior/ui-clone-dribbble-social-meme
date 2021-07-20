import 'package:social_meme/model/model.dart';

import 'package:social_meme/pages/home/widgets/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({
    Key? key,
  }) : super(key: key);

  final List<User> users = [
    User(
      avatarUrl: 'assets/avatar1.jpg',
      name: 'Chris Allen',
      followers: 300000,
      posts: [
        Post(
          imageUrl: 'assets/avatar2.png',
          date: '28 Oct 2020',
          likes: 84124,
        ),
        Post(
          imageUrl: 'assets/avatar3.jpeg',
          date: '28 Oct 2020',
          likes: 84124,
        ),
        Post(
          imageUrl: 'assets/avatar4.jpeg',
          date: '28 Oct 2020',
          likes: 84124,
        ),
        Post(
          imageUrl: 'assets/avatar5.jpeg',
          date: '28 Oct 2020',
          likes: 84124,
        ),
        Post(
          imageUrl: 'assets/avatar6.jpeg',
          date: '28 Oct 2020',
          likes: 84124,
        ),
        Post(
          imageUrl: 'assets/avatar7.png',
          date: '28 Oct 2020',
          likes: 84124,
        ),
        Post(
          imageUrl: 'assets/avatar8.png',
          date: '28 Oct 2020',
          likes: 84124,
        ),
      ],
    ),
    User(
      avatarUrl: 'assets/avatar9.png',
      name: 'Richard Galler',
      followers: 300000,
      posts: [
        Post(
          imageUrl: 'assets/avatar10.png',
          date: '28 Oct 2020',
          likes: 84124,
        ),
        Post(
          imageUrl: 'assets/avatar11.png',
          date: '28 Oct 2020',
          likes: 84124,
        ),
        Post(
          imageUrl: 'assets/avatar12.png',
          date: '28 Oct 2020',
          likes: 84124,
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          AppBarHomePage(),
          Posts(users: users),
        ],
      ),
    );
  }
}
