import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Container MyArticles(String imageVal, String heading, String subHeading) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 300,
        width: 160.0,
        child: Card(
          child: Wrap(
            children: <Widget>[
              Image.asset(imageVal),
              Container(
                child: ListTile(
                  title: Text(heading),
                  subtitle: Text(subHeading),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget blogSection = Container(
      padding: const EdgeInsets.only(bottom: 2, left: 10),
      child: Text(
        "Macam macam Perlombaan pada 17 agustus :",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        "Setiap tahun pada tanggal 17 Agustus, rakyat Indonesia merayakan Hari Proklamasi Kemerdekaan ini dengan meriah. Beragam perlombaan dihadirkan mulai dari lomba panjat pinang, lomba makan kerupuk, hingga upacara militer di Istana Merdeka, serta seluruh masyarakat ikut berpartisipasi dengan caranya masing-masing..",
        softWrap: true,
        textAlign: TextAlign.justify,
      ),
    );

    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildbuttonColumn(color, Icons.near_me, 'DIRECT'),
          _buildbuttonColumn(color, FontAwesomeIcons.comment, 'COMMENT'),
          _buildbuttonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Informasi Terbaru, Dirgahayu 74:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  ' Bandung, Indonesia',
                  style: TextStyle(color: Colors.grey[505]),
                ),
              ],
            ),
          ),
          Icon(
            FontAwesomeIcons.heart,
            color: Colors.red[500],
          ),
          Text('100k'),
        ],
      ),
    );

    return MaterialApp(
      title: 'Biografy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("NKRIBlog"),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/17agustus.jpg',
              width: 600,
              height: 211,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
            blogSection,
            MyArticles("images/balap_karung.jpg", "Balap Karung",
                "Lomba Balap Karung"),
            MyArticles("images/makan_kerupuk.jpg", "Makan Kerupuk",
                "Lomba Makan Kerupuk"),
            MyArticles("images/tarik_tambang.jpg", "Tarik Tambang",
                " Lomba Tarik Tambang"),
          ],
        ),
      ),
    );
  }

  Column _buildbuttonColumn(Color color, IconData icon, String lable) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            lable,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}
