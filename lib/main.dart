import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: Container(),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          // DrawerHeader(
          //   child: Text(
          //     "Hello ,I am Tanmay",
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   decoration: BoxDecoration(
          //       gradient: LinearGradient(
          //           colors: [Colors.blue, Colors.blueAccent[100]])),
          // ),
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue, Colors.blueAccent[100]])),
              accountName: Text(
                "Tanmay Patel",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              accountEmail: Text("trp@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1491743715344-d5eed2a9c5bd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWFsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              )),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Personal"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("trp@gmail.com"),
            trailing: Icon(Icons.send),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Password"),
            subtitle: Text("trp****"),
            trailing: Icon(Icons.vpn_key),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Setting"),
          )
        ],
      )),
    );
  }
}
