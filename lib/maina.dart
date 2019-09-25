import 'package:flutter/material.dart';
import 'mainb.dart';
import 'mainc.dart';
import 'maind.dart';
import 'maine.dart';

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget titleSelection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
              child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: new Text(
                  'Oeschinen Lake Campground',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              new Text(
                'Kandersteg, Switzerland',
                style: new TextStyle(
                  color: Colors.grey[500],
                ),
              )
            ],
          )),
//          new Icon(
//            Icons.star,
//            color: Colors.red[500],
//          ),
//          new Text('41'),
          new FavoriteWidget(),
        ],
      ),
    );

    Column buildColumnButton(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(
            icon,
            color: color,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          )
        ],
      );
    }

    Widget selectButton = new Card(
      child: new Container(
        padding: new EdgeInsets.only(top: 20, bottom: 20),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildColumnButton(Icons.call, 'CALL'),
            buildColumnButton(Icons.near_me, 'ROUTE'),
            buildColumnButton(Icons.share, 'SHARE'),
          ],
        ),
      ),
    );

    Widget textSelect = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        """
        Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        """,
        softWrap: true,
      ),
    );

    Widget starWidget = new Container(
      padding: const EdgeInsets.all(20.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Icon(
                Icons.star,
                color: Colors.black,
              ),
              new Icon(
                Icons.star,
                color: Colors.black,
              ),
              new Icon(
                Icons.star,
                color: Colors.black,
              ),
              new Icon(
                Icons.star,
                color: Colors.black,
              ),
              new Icon(
                Icons.star,
                color: Colors.black,
              ),
            ],
          ),
          new Text(
            "170 Reviews",
            style: new TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 20.0,
              letterSpacing: 0.5,
              fontFamily: 'Roboto',
            ),
          )
        ],
      ),
    );

    var descTextStyle = new TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18.0,
      height: 2.0,
    );

    Widget iconList = new DefaultTextStyle(
        style: descTextStyle,
        child: new Container(
          padding: const EdgeInsets.all(20.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Icon(
                    Icons.kitchen,
                    color: Colors.green[500],
                  ),
                  new Text('PREP:'),
                  new Text('25 min'),
                ],
              ),
              new Column(
                children: <Widget>[
                  new Icon(
                    Icons.timer,
                    color: Colors.green[500],
                  ),
                  new Text('COOK:'),
                  new Text('1 hr'),
                ],
              ),
              new Column(
                children: <Widget>[
                  new Icon(
                    Icons.restaurant,
                    color: Colors.green[500],
                  ),
                  new Text('FEEDS:'),
                  new Text('4-6'),
                ],
              )
            ],
          ),
        ));

    Stack stack = new Stack(
      alignment: const Alignment(0.3, 0.6),
      children: <Widget>[
        new Align(
          alignment: FractionalOffset.center,
          child: new CircleAvatar(
            backgroundImage: new AssetImage("images/mountain.JPG"),
            radius: 100.0,
          ),
        ),
        new Container(
          decoration: new BoxDecoration(
            color: Colors.black45,
          ),
          child: new Text(
            'Mia B',
            style: new TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        )
      ],
    );

    Card card = new Card(
      margin: new EdgeInsets.all(10),
      elevation: 24,
      child: new Column(
        children: [
          new ListTile(
            title: new Text('1625 Main Street',
                style: new TextStyle(fontWeight: FontWeight.w500)),
            subtitle: new Text('My City, CA 99984'),
            leading: new Icon(
              Icons.restaurant_menu,
              color: Colors.blue[500],
            ),
          ),
          new Divider(),
          new ListTile(
            title: new Text('(408) 555-1212',
                style: new TextStyle(fontWeight: FontWeight.w500)),
            leading: new Icon(
              Icons.contact_phone,
              color: Colors.blue[500],
            ),
          ),
          new ListTile(
            title: new Text('costa@example.com'),
            leading: new Icon(
              Icons.contact_mail,
              color: Colors.blue[500],
            ),
          ),
        ],
      ),
    );

    Widget containerCard = new Container(
      margin: EdgeInsets.only(left: 100.0, right: 50.0, bottom: 100.0),
      constraints: BoxConstraints.tightFor(width: 200.0, height: 200.0),
      decoration: BoxDecoration(
          gradient: RadialGradient(
              colors: [Colors.red, Colors.blue],
              center: Alignment.topLeft,
              radius: 0.98),
          boxShadow: [
            BoxShadow(
                offset: Offset(2.0, 2.0),
                color: Colors.black54,
                blurRadius: 4.0)
          ]),
      transform: Matrix4.rotationZ(.2),
      alignment: Alignment.center,
      child: Text(
        "5.20",
        style: TextStyle(color: Colors.white, fontSize: 40.0),
      ),
    );

    return new Scaffold(
      body: new ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Container(
            height: 30,
          ),
          Image.asset(
            'images/mountain.JPG',
            height: 240.0,
            fit: BoxFit.fill,
          ),
          titleSelection,
          selectButton,
          textSelect,
          starWidget,
          iconList,
          stack,
          card,
          containerCard
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              // MaterialPageRoute(builder: (context) => SampleAppPage()));
              //MaterialPageRoute(builder: (context) => (GestureTest())));
              MaterialPageRoute(builder: (context) => (ScrollWidthView())));
        },
        tooltip: "按那么长时间~",
      ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => new _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorite) {
        _isFavorite = false;
        _favoriteCount -= 1;
      } else {
        _isFavorite = true;
        _favoriteCount += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new IconButton(
          icon: (_isFavorite
              ? new Icon(Icons.star)
              : new Icon(Icons.star_border)),
          color: Colors.red,
          onPressed: _toggleFavorite,
        ),
        new SizedBox(
          width: 18.0,
          child: new Container(
            child: new Text("$_favoriteCount"),
          ),
        ),
      ],
    );
  }
}
