import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
    // This widget is the root of your application.
  @override
  _HomePageState createState() => new _HomePageState();
}
class _HomePageState extends State<HomePage>{
  String mainProfilePicture = "https://cdn3.vectorstock.com/i/1000x1000/30/97/flat-business-man-user-profile-avatar-icon-vector-4333097.jpg";
String otherProfilePicture ="https://cdn2.vectorstock.com/i/1000x1000/41/11/flat-business-woman-user-profile-avatar-icon-vector-4334111.jpg";

void switchUser(){
  String backupString = mainProfilePicture;
  this.setState(() {
    mainProfilePicture = otherProfilePicture;
    otherProfilePicture = backupString;
  });
}
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Araths Baby App"), backgroundColor: Colors.pinkAccent,),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
                            accountName: new Text ("Sergio Alejo"),
                            accountEmail: new Text("s@gmail.com"),
                            currentAccountPicture: new GestureDetector(
                              onTap:()=> switchUser(),
                              child: new CircleAvatar(
                                backgroundImage: new NetworkImage (mainProfilePicture),
                              ),
                            ),
                            otherAccountsPictures: <Widget>[
                              new GestureDetector(
                                onTap:()=>switchUser(),
                                child: new CircleAvatar(
                                  backgroundImage: new NetworkImage(otherProfilePicture), 
                                  ),
                              )
                            ],
                            decoration: new BoxDecoration(
                              image : new DecorationImage(
                                fit: BoxFit.fill,
                                image: new NetworkImage("https://i.pinimg.com/originals/7b/40/40/7b4040ba378868e0594a1049ca4cae3b.jpg")
                                )
                            ),
            ),
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


  
