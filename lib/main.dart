import 'package:flutter/material.dart';
void main() => runApp(LayoutApp());
class LayoutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget descriptionSection = Container(
      padding:  const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text('Halooo is a historical region that encompasses the city of Athens, the capital of Greece. It is a peninsula projecting into the Aegean Sea, bordering on Boeotia to the north and Megaris to the west. The southern tip of the peninsula, known as Laurion, was an important mining region.The history of Attica is tightly linked with that of Athens, and specifically the Golden Age of Athens during the classical period. Ancient Attica (Athens city-state) was divided into demoi or municipalities from the reform of Cleisthenes in 508/7 BC, grouped into three zones: urban (astu) in the region of Athens main city and Piraeus (port of Athens), coastal (paralia) along the coastline and inland (mesogeia) in the interior.The modern administrative region of Attica is more extensive than the historical region and includes Megaris as part of the regional unit West Attica, and the Saronic Islands and Cythera, as well as the municipality of Troizinia on the Peloponnesian mainland, as the regional unit Islands.'),
                )
              ],
            ),
          )
        ],
      ),
    );
    Widget buttonSection = Container(
      padding:  const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.call,
                size: 25,
                color: Colors.lightBlue,
              ),
              Container(
                padding:  const EdgeInsets.all(10),
                child: Text('Call',style: TextStyle(fontSize: 12,color: Colors.blueAccent),),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.near_me,
                size: 25,
                color: Colors.lightBlue,
              ),
              Container(
                padding:  const EdgeInsets.all(10),
                child: Text('Route',style: TextStyle(fontSize: 12,color: Colors.blueAccent),),
              )
            ],
          ),Column(
            children: <Widget>[
              Icon(
                Icons.share,
                size: 25,
                color: Colors.lightBlue,
              ),
              Container(
                padding:  const EdgeInsets.all(10),
                child: Text('Share',style: TextStyle(fontSize: 12,color: Colors.blueAccent),),
              )
            ],
          ),
        ],
      ),
    );


    Widget titleSection = Container(
      padding:  const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    'Attica City',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                  padding: const EdgeInsets.only(bottom: 8),
                ),
                Text(
                  'Attica',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        FavoriteWidget(),
        ],
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Map'),
        ),
        body: Scrollbar(
          child: ListView(
          children: <Widget>[
            Image.asset(
              'img/test.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            descriptionSection
          ],
        ),
        ),
      ),
    );
  }
}class FavoriteWidget extends StatefulWidget {
  @override
  createState() => _FavoriteWidgetState();
}

class  _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount= 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget> [
          Container (
            padding: EdgeInsets.all(0),
            child: IconButton(
              icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
              color: Colors.red[500],
              onPressed: _toggleFavorite,
            ),
          ),
          SizedBox(
            width: 18,
            child: Container(
              child: Text('$_favoriteCount',textAlign: TextAlign.justify),
            ),
          )
        ]
    );
  }
}