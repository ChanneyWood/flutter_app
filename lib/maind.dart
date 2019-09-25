import 'package:flutter/material.dart';

class GestureTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _GestureTestState();
  }


}

class _GestureTestState extends State<GestureTest>{
  double _top = 10.0;//距顶部的偏移
  double _left = 10.0;//距左边的偏移

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        Positioned(
          left: _left,
          top: _top,
          child: GestureDetector(
            onPanDown: (DragDownDetails e){
              print("用户手指按下${e.globalPosition}");
            },
            onPanUpdate: (DragUpdateDetails e){
              setState(() {
                _left += e.delta.dx;
                _top += e.delta.dy;
              });
            },
            onPanEnd: (DragEndDetails e){
              print("用户滑动结束${e.velocity}");
            },
            child: CircleAvatar(child: Text("A"),),
          ),
        )
      ],
    );
  }
}