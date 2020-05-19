import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _HomePageState createState() => new _HomePageState();
}
class _HomePageState extends State<HomePage>{
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Araths Baby App"), backgroundColor: Colors.pinkAccent,),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("First Page"),
              trailing: new Icon(Icons.arrow_upward),
            ),
            new ListTile(
              title: new Text("Second Page"),
              trailing: new Icon(Icons.arrow_right),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.cancel),
            ),
          ],
        ),),
      body: new Center(
        child: new Text("Home Page",style: new TextStyle(fontSize:35.0),),
    ),
    );
    
  }
}


  
