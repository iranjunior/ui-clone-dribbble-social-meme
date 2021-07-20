import 'package:social_meme/model/model.dart';
import 'package:social_meme/pages/home/widgets/card_meme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({
    Key? key,
    required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        users
            .map((user) => Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 8,
                  ),
                  child: CardMeme(
                    user: user,
                    post: user.posts.last,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
