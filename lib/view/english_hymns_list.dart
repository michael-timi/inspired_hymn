import 'package:flutter/material.dart';
import 'package:inspired_gospel_hymn/model/hymn_library.dart';
import 'package:inspired_gospel_hymn/widget/animation.dart';
import 'english_hymns_detail.dart';

class EnglishHymnListView extends StatefulWidget {
  final HymnLibrary hymnLibrary;

  EnglishHymnListView({this.hymnLibrary});

  @override
  _EnglishHymnListViewState createState() => _EnglishHymnListViewState();
}

class _EnglishHymnListViewState extends State<EnglishHymnListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: hymn_library.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: InkWell(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: FadeAnimation(
                  1,
                  Card(
                    color: index % 2 == 0 ? Color(0xff453658) : Colors.pink,
                    elevation: 1.0,
                    borderOnForeground: true,
                    child: ListTile(
                      title: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(width: 5),
                            Text(
                              'INSPIRED GOSPEL HYMN ' +
                                  hymn_library[index].index.toString() +
                                  ':',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              hymn_library[index].engTitle,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    English_Hymns_Details_Page(
                                      hymnLibrary: hymn_library[index],
                                    )));
                      },
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}

class EnglishHymnGridview extends StatefulWidget {
  @override
  _EnglishHymnGridviewState createState() => _EnglishHymnGridviewState();
}

class _EnglishHymnGridviewState extends State<EnglishHymnGridview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5, crossAxisSpacing: 1.0, mainAxisSpacing: 2.0),
        scrollDirection: Axis.vertical,
        itemCount: hymn_library.length,
        itemBuilder: (BuildContext context, index) {
          return Container(
            child: InkWell(
              child: Padding(
                padding: EdgeInsets.only(top: 4.0, left: 2.0, right: 2.0),
                child: FadeAnimation(
                  1,
                  Card(
                    color: index % 3 == 0 ? Color(0xff453658) : Colors.pink,
                    elevation: 1.0,
                    borderOnForeground: true,
                    child: ListTile(
                      title: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'IGH ' + hymn_library[index].index.toString(),
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    English_Hymns_Details_Page(
                                      hymnLibrary: hymn_library[index],
                                    )));
                      },
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
