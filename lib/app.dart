import 'package:social_meme/constants/colors.dart';
import 'package:social_meme/pages/pages.dart';
import 'package:social_meme/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  int currentPage = 0;
  final PageController controller = PageController();

  final List<Widget> content = [
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(kYellowColor),
            Color(kPinkColor),
          ],
          begin: Alignment.topRight,
          end: Alignment.topLeft,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        floatingActionButton: FloatingButtonCustom(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomApp(
          currentIndex: currentPage,
          onPressed: (newIndex) {
            setState(() {
              currentPage = newIndex;
              controller.animateToPage(newIndex,
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
            });
          },
        ),
        body: PageView.builder(
          onPageChanged: (newIndex) {
            setState(() {
              currentPage = newIndex;
              controller.animateToPage(newIndex,
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
            });
          },
          controller: controller,
          itemCount: content.length,
          itemBuilder: (context, index) {
            return content[index];
          },
        ),
      ),
    );
  }
}
