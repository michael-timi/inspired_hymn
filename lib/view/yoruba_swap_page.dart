import 'package:flutter/material.dart';
import 'package:inspired_gospel_hymn/view/yoruba_hymns_list.dart';

class YorubaSwapPage extends StatefulWidget {
  final bool swap;

  YorubaSwapPage({this.swap});

  @override
  _YorubaSwapPageState createState() => _YorubaSwapPageState();
}

class _YorubaSwapPageState extends State<YorubaSwapPage> {
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
      swapWidget = YorubaHymnsListView();
    } else {
      swapWidget = YorubaHymnGridView();
    }
    var swapTile = new Expanded(
      child: swapWidget,
    );
    return Scaffold(
      backgroundColor: Color(0xff392850),
      appBar: AppBar(
        title: Text(
          'Yoruba Hymns',
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
