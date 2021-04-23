import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover More'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) => CatItems(
          data[index],
        ),
        itemCount: data.length,
      ),
    );
  }
}

class Categories {
  final String catHeader;
  final List<Categories> catExpanded;

  Categories(this.catHeader, [this.catExpanded = const <Categories>[]]);
}

final List<Categories> data = <Categories>[
  Categories('Praise (1-26)', <Categories>[
    Categories('IF NOT ON OUR SIDE'),
    Categories('THANKS UNTO OUR LORD GOD SAVIOUR'),
    Categories('ALMIGHTY JAH JEHOVAH'),
    Categories('PRAISE THE SAVIOUR YE WHO KNOW HIM'),
    Categories('THROUGH ALL THE CHANGING SCENES OF LIFE'),
    Categories('ALLELUYAH!, SONGS OF SWEETNESS'),
    Categories('PRAISE TO THE HOLIEST IN THE HEIGHT'),
    Categories('ALMIGHTY GOD OF CREATION'),
    Categories('NOW THANK WE ALL OUR GOD'),
    Categories('HEAD OF THE CHURCH TRIUMPHANT'),
    Categories('PRAISE TO THE LORD, THE ALMIGHTY'),
    Categories('PRAISE HIM, PRAISE HIM'),
    Categories('TO THEE, O COMFORTER DIVINE'),
    Categories('PRAISE MY SOUL THE KING OF HEAVEN'),
    Categories('PRAISE THE KING OF GLORY'),
    Categories('HOW SWEET THE NAME OF JESUS'),
    Categories('LET US WITH A GLADSOME MIND'),
    Categories('FOR MERCIES COUNTLESS AS THE SAND'),
    Categories('OH FOR A THOUSAND TONGUES TO SING'),
    Categories('O WORSHIP THE KING'),
    Categories('AWAKE, MY SOUL TO JOYFUL DAYS'),
    Categories('ALL HAIL THE POWER OF JESUS NAME'),
    Categories('HOLY, HOLY, HOLY, LORD GOD ALMIGHTY'),
    Categories('WE GIVE IMMORTAL PRAISE'),
    Categories('TO GOD BE THE GLORY'),
    Categories('I WILL PRAISE THE LORD FOR HIS LOVE TO ME'),
  ]),
  Categories('Morning (27-35)', <Categories>[
    Categories('THERE IS SUNSHINE IN THE VALLEY'),
    Categories('COME TO THE MORNING PRAY`R')
  ]),
  Categories('Evening (36-45)', <Categories>[
    Categories('THY LOVE HAS SPARED OUR LIVES TODAY'),
    Categories('GLORY TO THEE, MY GOD THIS NIGHT')
  ]),
  Categories('The Lord`s Day (46-61)', <Categories>[
    Categories('LORD OF SABBATH, HEAR OUR VOWS'),
    Categories('HOW OUR HEARTS LONG FOR THEE')
  ]),
  Categories('Advent (62-75)', <Categories>[
    Categories('THOU ART COMING O MY LORD'),
    Categories('LO, HE COMES WITH CLOUDS DESCENDING')
  ]),
  Categories('Christmas (76-87)', <Categories>[
    Categories('CHRISTIAN, AWAKE, SHARE THE HAPPY MORN'),
    Categories('JI, ‘WO KRISTIAN, K‘O KI ORO AYO')
  ]),
];

class CatItems extends StatelessWidget {
  final Categories cats;

  const CatItems(this.cats);

  Widget _buildCatTiles(Categories root) {
    if (root.catExpanded.isEmpty) {
      return ListTile(
          title: Text(
        root.catHeader,
        style: TextStyle(fontSize: 14),
      ));
    }
    return ExpansionTile(
        title: Text(root.catHeader,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        key: PageStorageKey<Categories>(root),
        children: root.catExpanded.map(_buildCatTiles).toList());
  }

  @override
  Widget build(BuildContext context) {
    return _buildCatTiles(cats);
  }
}
