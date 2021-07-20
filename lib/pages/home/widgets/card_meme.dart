import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:social_meme/constants/colors.dart';
import 'package:social_meme/model/model.dart';

class CardMeme extends StatelessWidget {
  const CardMeme({
    Key? key,
    required this.user,
    required this.post,
  }) : super(key: key);

  final User user;
  final Post post;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(32),
      child: Container(
        height: 560,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Flexible(
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Color(kPurpleColor).withOpacity(0.3),
                            blurRadius: 10,
                            offset: Offset(0, 10),
                          ),
                        ],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(this.user.avatarUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            this.user.name,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          SizedBox(height: 8),
                          Text(
                            this.post.date,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(CupertinoIcons.ellipsis_vertical),
                      iconSize: 32,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(kPurpleColor).withOpacity(0.3),
                        blurRadius: 10,
                        offset: Offset(0, 10),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(32),
                    image: DecorationImage(
                      image: AssetImage(this.post.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.hand_thumbsup),
                        iconSize: 32,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.hand_thumbsdown),
                        iconSize: 32,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              this.post.likes.toString(),
                              style: Theme.of(context).textTheme.headline3,
                            ),
                            Text(
                              'Likes',
                              style: Theme.of(context).textTheme.headline4,
                            )
                          ],
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.rocket),
                        iconSize: 32,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
