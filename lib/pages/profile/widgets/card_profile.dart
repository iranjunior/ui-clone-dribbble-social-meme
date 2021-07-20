import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_meme/extensions/numbers.dart';
import 'package:social_meme/constants/colors.dart';
import 'package:social_meme/model/model.dart';

class CardProfile extends StatelessWidget {
  const CardProfile({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      sliver: SliverToBoxAdapter(
        child: Container(
          height: 300,
          color: Colors.transparent,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: 40,
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(32),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 75.0,
                      left: 75.0,
                      bottom: 40.0,
                      top: 60.0,
                    ),
                    child: Column(
                      children: [
                        Text(
                          this.user.name,
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        Text(
                          this.user.followers.formatFollowers(),
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(color: Colors.black, fontSize: 48),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.hand_thumbsup,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'for ${this.user.posts.length} uploaded memes',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(fontSize: 18),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 90,
                width: 90,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(kPurpleColor).withOpacity(0.3),
                      blurRadius: 10,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Container(
                  height: 88,
                  width: 88,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(this.user.avatarUrl),
                      fit: BoxFit.cover,
                    ),
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
