import 'package:flutter/material.dart';
import 'package:inspired_gospel_hymn/model/hymn_library.dart';
import 'package:inspired_gospel_hymn/widget/animation.dart';

import 'menu_page.dart';

class English_Hymns_Details_Page extends StatefulWidget {
  final HymnLibrary hymnLibrary;

  English_Hymns_Details_Page({this.hymnLibrary});

  @override
  _English_Hymns_Details_PageState createState() =>
      _English_Hymns_Details_PageState();
}

class _English_Hymns_Details_PageState
    extends State<English_Hymns_Details_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GH: ' + widget.hymnLibrary.index.toString(),
          textAlign: TextAlign.right,
          style: TextStyle(fontSize: 20.0),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuPage()));
              })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.share,
          color: Colors.pink,
        ),
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FadeAnimation(
                        .7,
                        Card(
                            color: Colors.pink,
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.collections_bookmark,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    widget.hymnLibrary.engTitle,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            )),
                      )
                    ],
                  ),
                  SizedBox(height: 5.0),
                  FadeAnimation(
                    .5,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(children: <Widget>[
                              Icon(
                                Icons.account_circle,
                                color: Colors.pink,
                              ),
                              SizedBox(width: 5),
                              Text(
                                widget.hymnLibrary.hymnWriter,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ]),
                          ),
                        ),
                        Card(
                            child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(children: <Widget>[
                            Icon(
                              Icons.category,
                              color: Colors.pink,
                            ),
                            SizedBox(width: 5),
                            Text(
                              widget.hymnLibrary.engCategory,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ]),
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            FadeAnimation(
              .7,
              Center(
                child: Container(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                    child: SelectableText(
                      widget.hymnLibrary.engLyrics,
                      showCursor: false,
                      cursorWidth: 5,
                      cursorColor: Colors.pink,
                      cursorRadius: Radius.circular(5.0),
                      toolbarOptions: ToolbarOptions(
                          copy: true, cut: true, selectAll: true),
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff392850),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
