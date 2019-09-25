import 'package:flutter/material.dart';

class ScrollWidthView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ScrollWidthState();
  }
}

class _ScrollWidthState extends State<ScrollWidthView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Scrollbar(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: 1000,
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Text("bug"),
                  top: 100,
                  left: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
