import 'package:flutter/material.dart';

class Author {
  final String name, life, description, imgPath;

  Author(
      {@required this.name,
      @required this.life,
      @required this.description,
      @required this.imgPath});
}

Author firstAuthor = Author(
    name: 'Bernard Shaw',
    life: '26 July, 1856 - 2 November, 1950',
    description:
        'George Bernard Shaw (26 July 1856 – 2 November 1950 [aged 94]), known at his insistence simply as Bernard Shaw, was an Irish playwright, critic, polemicist and political activist. His influence on Western theatre, culture and politics extended from the 1880s to his death and beyond. He wrote more than sixty plays, including major works such as Man and Superman (1902), Pygmalion (1912) and Saint Joan (1923). With a range incorporating both contemporary satire and historical allegory, Shaw became the leading dramatist of his generation, and in 1925 was awarded the Nobel Prize in Literature.',
    imgPath: 'assets/BernardShaw.jpg');
Author secondAuthor = Author(
    name: 'Cecil Alexander',
    life: 'April 1818 - 12 October, 1895',
    description:
        'Cecil Frances Alexander (April 1818 – 12 October 1895 [aged 77]) was an Anglo-Irish hymnwriter and poet. Amongst other works, she wrote "All Things Bright and Beautiful", "There Is a Green Hill Far Away" and the Christmas carol "Once in Royal David`s City".',
    imgPath: 'assets/CecilAlexander.png');
Author thirdAuthor = Author(
    name: 'Charles Wesley',
    life: '18 December, 1707 - 29 March, 1788',
    description:
        'Charles Wesley (18 December 1707 – 29 March 1788 [aged 80]) was an English leader of the Methodist movement, most widely known for writing about 6,500 hymns. Wesley was born in Epworth, Lincolnshire, the son of Anglican cleric and poet Samuel Wesley and his wife Susanna. He was a younger brother of Methodist founder John Wesley and Anglican cleric Samuel Wesley the Younger, and he became the father of musician Samuel Wesley and grandfather of musician Samuel Sebastian Wesley.',
    imgPath: 'assets/CharlesWesley.jpg');
Author fourthAuthor = Author(
    name: 'Fanny Crosby',
    life: '24 March, 1820 - 12 February, 1915',
    description:
        'Frances Jane van Alstyne (née Crosby; March 24, 1820 – February 12, 1915 [aged 94]), more commonly known as Fanny Crosby, was an American mission worker, poet, lyricist, and composer. She was one of the most prolific hymnists in history, writing more than 8,000 hymns and gospel songs, with more than 100 million copies printed, despite being blind from shortly after birth. She is also known for her teaching and her rescue mission work. By the end of the 19th century, she was a household name.',
    imgPath: 'assets/FannyCrosby.jpg');
Author fifthAuthor = Author(
    name: 'Frances Havergal',
    life: '14 December, 1836 - 3 June, 1879',
    description:
        'Frances Ridley Havergal (14 December, 1836 – 3 June, 1879 [aged 42]) was an English religious poet and hymnwriter. Take My Life and Let it Be and Thy Life for Me (also known as I Gave My Life for Thee) are two of her best known hymns. She also wrote hymn melodies, religious tracts, and works for children. She did not occupy, and did not claim for herself, a prominent place as a poet, but by her distinct individuality, she carved out a niche which she alone could fill.',
    imgPath: 'assets/FrancesHavergal.jpg');
Author sixthAuthor = Author(
    name: 'George Bennard',
    life: 'Februray 4, 1873 - October 10, 1985',
    description:
        'George Bennard (February 4, 1873 – October 10, 1958 [aged 85]) was an American hymn composer and preacher. He is best known for composing the famous hymn, "The Old Rugged Cross".',
    imgPath: 'assets/Gbennard.jpg');
Author sevenAuthor = Author(
    name: 'Henry Lute',
    life: 'June 1, 1793 - November 20, 1847',
    description:
        'Henry Francis Lyte (1 June 1793 – 20 November 1847) was an Anglican divine, hymnodist, and poet.',
    imgPath: 'assets/HenryLute.jpg');
Author eightAuthor = Author(
    name: 'Isaac Watts',
    life: 'July 17, 1674 - Novemeber 25, 1748',
    description:
        'Isaac Watts (17 July 1674 – 25 November 1748 [aged 74]) was an English Christian minister (Congregational), hymn writer, theologian, and logician. He was a prolific and popular hymn writer and is credited with some 750 hymns. He is recognized as the "Godfather of English Hymnody"; many of his hymns remain in use today and have been translated into numerous languages.',
    imgPath: 'assets/IsaacWatts.jpg');
Author ninthAuthor = Author(
    name: 'John Bowring',
    life: 'October 17, 1792 - November 23, 1872',
    description:
        'Sir John Bowring, (17 October 1792 – 23 November 1872 [aged 80]) was an English political economist, traveller, writer, literary translator, polyglot, and the fourth Governor of Hong Kong.',
    imgPath: 'assets/JohnBowring.jpg');
Author tenthAuthor = Author(
    name: 'John Newton',
    life: 'August [O.S July 24] 1725',
    description:
        'John Newton (4 August [O.S. 24 July] 1725 – 21 December 1807) was an English Anglican clergyman and abolitionist who was forced to serve as a sailor in the Royal Navy for a period. In 1745 he became a slave of Princess Peye, a black princess of the Sherbro people and then, years after, he became the captain of slave ships. He later became ordained as an evangelical Anglican cleric, serving Olney, Buckinghamshire for two decades, and also wrote hymns, including "Amazing Grace" and "Glorious Things of Thee Are Spoken".',
    imgPath: 'assets/JohnNewtonColour.jpg');
Author eleventhAuthor = Author(
    name: 'Reginald Heber',
    life: 'April 21, 1783 – April 3, 1826',
    description:
        'Reginald Heber (21 April 1783 – 3 April 1826) was an English bishop, man of letters and hymn-writer. After 16 years as a country parson, he served as Bishop of Calcutta until his death at the age of 42. The son of a rich landowner and cleric, Heber gained fame at the University of Oxford as a poet. After graduation he made an extended tour of Scandinavia, Russia and Central Europe. Ordained in 1807, he took over his father`s old parish, Hodnet, Shropshire. He also wrote hymns and general literature, including a study of the works of the 17th-century cleric Jeremy Taylor. He was consecrated Bishop of Calcutta in October 1823. He travelled widely and worked to improve the spiritual and general living conditions of his flock. Arduous duties, a hostile climate and poor health led to his collapse and death after less than three years in India. Memorials were erected there and in St Paul`s Cathedral, London. A collection of his hymns appeared soon after his death. One, `Holy, Holy, Holy`, remains popular for Trinity Sunday.',
    imgPath: 'assets/ReginaldHeber.jpg');

List<Author> authors = [
  eightAuthor,
  sixthAuthor,
  thirdAuthor,
  ninthAuthor,
  fifthAuthor,
  sevenAuthor,
  tenthAuthor,
  secondAuthor,
  eleventhAuthor,
  firstAuthor,
  fourthAuthor,
];
