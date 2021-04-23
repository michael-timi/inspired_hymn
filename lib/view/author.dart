import 'package:flutter/material.dart';
import 'package:inspired_gospel_hymn/model/authors_library.dart';
import 'package:inspired_gospel_hymn/widget/animation.dart';
import 'package:inspired_gospel_hymn/widget/pageView_animation.dart';
import 'package:palette_generator/palette_generator.dart';

class Authors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Authors'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(children: <Widget>[
          Expanded(
            flex: 10,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return AuthorsWidget(
                    author: authors[index],
                    compactMode: false,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(height: 20);
                },
                itemCount: authors.length),
          ),
        ]),
      ),
    );
  }
}

class AuthorsWidget extends StatelessWidget {
  final Author author;
  final bool compactMode;

  AuthorsWidget({this.author, this.compactMode = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _generatePalette(context, author.imgPath).then((_palette) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => AuthorsDetailPage(
                        author: author,
                        pallete: _palette,
                      )));
        });
      },
      child: FadeAnimation(
        1,
        Row(
          children: <Widget>[
            ClippedImage(imgPath: author.imgPath, compactMode: compactMode),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                NameWidget(
                  name: author.name,
                  style: TextStyle(
                    color: Color(0xff392850),
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  author.life,
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

//Creating The Pallete Generator
  Future<PaletteGenerator> _generatePalette(context, String imgUrl) async {
    PaletteGenerator _paletteGenerator =
        await PaletteGenerator.fromImageProvider(
      AssetImage(imgUrl),
      size: Size(110, 150),
      maximumColorCount: 20,
    );
    return _paletteGenerator;
  }
}

class NameWidget extends StatelessWidget {
  final String name;
  final TextStyle style;

  NameWidget({this.name, this.style});

  @override
  Widget build(BuildContext context) {
    final List<String> namePartitions = name.split(" ");

    return RichText(
        text: TextSpan(children: [
      TextSpan(text: namePartitions[0].toUpperCase(), style: style),
      if (namePartitions.length > 1)
        TextSpan(text: '\n${namePartitions[1].toUpperCase()}', style: style),
    ]));
  }
}

class ClippedImage extends StatelessWidget {
  final String imgPath;
  final bool compactMode;
  static const BorderRadius _cardBorderRadius =
      const BorderRadius.all(Radius.circular(12));

  ClippedImage({this.imgPath, this.compactMode});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: _cardBorderRadius,
      elevation: compactMode ? 0 : 8,
      child: ClipRRect(
        borderRadius: _cardBorderRadius,
        child: Image.asset(
          imgPath,
          height: compactMode ? 100 : 150,
          width: compactMode ? 80 : 110,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class AuthorsDetailPage extends StatelessWidget {
  final Author author;
  final PaletteGenerator pallete;

  AuthorsDetailPage({this.author, this.pallete});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Image.asset(
          author.imgPath,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          color: pallete.darkMutedColor.color.withOpacity(0.8),
        ),
        Positioned(
          top: 60,
          right: 20,
          child: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.white,
                size: 40,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 20, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 120,
              ),
              PageViewAnimation(
                .7,
                NameWidget(
                  name: author.name,
                  style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w800)
                      .copyWith(color: pallete.lightMutedColor.color),
                ),
              ),
              SizedBox(height: 8),
              PageViewAnimation(
                .5,
                Text(
                  author.life,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    height: 1.2,
                  ).copyWith(color: pallete.lightMutedColor.color),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                flex: 3,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: PageViewAnimation(
                    .3,
                    Text(
                      author.description,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.8,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'The Authors'.toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w800,
                    height: 1.2,
                    fontSize: 16),
              ),
              SizedBox(height: 8),
              FadeAnimation(
                1,
                Container(
                    height: 100,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ClippedImage(
                            compactMode: true,
                            imgPath: authors[index].imgPath,
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 12,
                          );
                        },
                        itemCount: authors.length)),
              )
            ],
          ),
        ),
      ],
    ));
  }
}
