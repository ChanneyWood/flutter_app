import 'package:flutter/material.dart';

class MyBottom extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BottomState();
  }
}

class BottomState extends State<MyBottom>{
  int _currentIndex = 0;

  var _bottomNavigationColor = Colors.blue;

  var pages = [];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: _bottomNavigationColor,),title: Text("Home",style: TextStyle(color: _bottomNavigationColor),)),
            BottomNavigationBarItem(icon: Icon(Icons.email,color: _bottomNavigationColor,),title: Text("Email",style: TextStyle(color: _bottomNavigationColor),)),
            BottomNavigationBarItem(icon: Icon(Icons.pages,color: _bottomNavigationColor,),title: Text("Pages",style: TextStyle(color: _bottomNavigationColor),)),
          ],
          currentIndex: _currentIndex,
          onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
          },
      ),
      body: pages[_currentIndex],
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    pages
      ..add(HomePage())
      ..add(EmailPage())
      ..add(PagesPage());
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
    );
  }
}

class EmailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Email"),
      ),
    );
  }
}

class PagesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Pages"),
      ),
    );
  }
}