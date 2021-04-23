import 'package:flutter/material.dart';
import 'package:inspired_gospel_hymn/view/english_hymns_list.dart';

class EnglishSharedPage extends StatefulWidget {
  final bool swap;

  EnglishSharedPage({this.swap});
  @override
  _EnglishSharedPageState createState() => _EnglishSharedPageState();
}

class _EnglishSharedPageState extends State<EnglishSharedPage> {
  bool swap = false;

  @override
  void initState() {
    swap = widget.swap;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget swapWidget;
    if (swap) {
      swapWidget = EnglishHymnListView();
    } else {
      swapWidget = EnglishHymnGridview();
    }
    var swapTile = new Expanded(
      child: swapWidget,
    );

    return Scaffold(
      backgroundColor: Color(0xff392850),
      appBar: AppBar(
        title: Text(
          'English Hymns',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.swap_horiz),
              onPressed: () {
                setState(() {
                  swap = !swap;
                });
              })
        ],
      ),
      body: Column(
        children: <Widget>[
          swapTile,
        ],
      ),
    );
  }
}
