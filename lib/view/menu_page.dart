import 'package:flutter/material.dart';
import 'package:inspired_gospel_hymn/view/english_swap_page.dart';
import 'package:inspired_gospel_hymn/view/yoruba_swap_page.dart';
import 'package:inspired_gospel_hymn/widget/pageView_animation.dart';
import 'about.dart';
import 'author.dart';
import 'category.dart';
import 'english_hymns_list.dart';
import 'yoruba_hymns_list.dart';

final TextStyle whiteText = TextStyle(color: Colors.white);

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage>
    with SingleTickerProviderStateMixin {
  PageController _pageController;
  int totalPage = 5;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              page: 1,
              title: 'ENGLISH',
              description: 'Over 400 English Hymns.',
              image: 'assets/EnglishPageV.jpg',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EnglishSharedPage(
                              swap: true,
                            )));
              }),
          makePage(
              page: 2,
              title: 'YORUBA',
              image: 'assets/YorubaPageV.jpg',
              description: 'Ofe le ni orin ihinrere ole igba meji',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => YorubaSwapPage(swap: true)));
              }),
          makePage(
              page: 3,
              title: 'CATEGORY',
              image: 'assets/CatPageV.jpg',
              description: 'Discover it all by there categories',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Category()));
              }),
          makePage(
              page: 4,
              title: 'AUTHORS',
              image: 'assets/AuthorPageV.jpg',
              description: 'Discover more about the hymnists.',
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Authors()));
              }),
          makePage(
              page: 5,
              title: 'ABOUT',
              image: 'assets/instrument.jpg',
              description: 'Find out about us.',
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              }),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, onTap, page}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
            0.3,
            0.9
          ], colors: [
            Colors.black.withOpacity(0.9),
            Colors.black.withOpacity(0.2),
          ])),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    PageViewAnimation(
                        1,
                        Text(
                          page.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    Text(
                      '/' + totalPage.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )
                  ],
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    PageViewAnimation(
                        .7,
                        Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                    PageViewAnimation(
                        .5,
                        Text(
                          description,
                          style: TextStyle(
                              color: Colors.white.withOpacity(.7),
                              height: 1.9,
                              fontSize: 20),
                        )),
                    SizedBox(height: 30),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
