import 'package:flutter/material.dart';
import 'package:inspired_gospel_hymn/model/hymn_library.dart';
import 'package:inspired_gospel_hymn/view/yoruba_hymns_detail.dart';
import 'package:inspired_gospel_hymn/widget/animation.dart';

class YorubaHymnsListView extends StatefulWidget {
  final HymnLibrary hymnLibrary;

  YorubaHymnsListView({this.hymnLibrary});

  @override
  _YorubaHymnsListViewState createState() => _YorubaHymnsListViewState();
}

class _YorubaHymnsListViewState extends State<YorubaHymnsListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392850),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {},
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  itemCount: hymn_library.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: InkWell(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: FadeAnimation(
                            1,
                            Card(
                              color: index % 2 == 0
                                  ? Color(0xff453658)
                                  : Colors.pink,
                              elevation: 1.0,
                              borderOnForeground: true,
                              child: ListTile(
                                title: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(width: 5),
                                      Text(
                                        'ORIN IHINRERE ' +
                                            hymn_library[index]
                                                .index
                                                .toString() +
                                            ':',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        hymn_library[index].yorTitle,
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
                                              YorubaHymnsDetailsPage(
                                                hymnLibrary:
                                                    hymn_library[index],
                                              )));
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class YorubaHymnGridView extends StatefulWidget {
  @override
  _YorubaHymnGridViewState createState() => _YorubaHymnGridViewState();
}

class _YorubaHymnGridViewState extends State<YorubaHymnGridView> {
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
                                builder: (context) => YorubaHymnsDetailsPage(
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
