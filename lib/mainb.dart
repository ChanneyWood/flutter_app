import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

//main() => runApp(new MySample());


class MySample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Sample App',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget{
  _SampleAppPageState createState() => new _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage>{
  List widgets = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  showLoadingDialog(){
    if(widgets.length == 0){
      return true;
    }else
      return false;
  }

  getBody(){
    if(showLoadingDialog()){
      return getProgressDialog();
    }else
      return getListView();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sample App"),
      ),
      body: getBody(),
    );
  }

  void loadData() async{
    String dataUrl = "https://jsonplaceholder.typicode.com/posts";
    http.Response response = await http.get(dataUrl);
    setState(() {
      widgets = json.decode(response.body);
    });
  }

  getProgressDialog() {
    return new Center(child: new CircularProgressIndicator(),);
  }

  getListView() => new ListView.builder(
      itemCount: widgets.length,
      itemBuilder: (BuildContext context,int position){
        return getRow(position);
  });

  getRow(int position) {
    return new Padding(padding: new EdgeInsets.all(10.0),child: new Text("Row ${widgets[position]["title"]}"),);
  }

}