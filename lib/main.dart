import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_tutorials/pages/ChatPage.dart';
import 'package:flutter_tutorials/pages/Homepage.dart';
import 'package:flutter_tutorials/pages/ProfilePage.dart';
void main(){
  runApp(
    MaterialApp(
      title: "TabBar Tutorials",
      home: TabBarPage(),


    )
  );
}
class TabBarPage extends StatefulWidget {
  TabBarPage({Key? key}) : super(key: key);

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar"),
          bottom:  const TabBar(
            tabs: [
              Tab(text: "Homepage",icon: Icon(Icons.home),),
              Tab(text: "profilepage",icon: Icon(Icons.person),),
              Tab(text: "chatPage",icon: Icon(Icons.chat),),
              
            ]
            ),
        ),
        body: TabBarView(children: [
          Homepage(),
          ProfilePage(),
          ChatPage(),

        ]),
        
      ),
    );
  }
}