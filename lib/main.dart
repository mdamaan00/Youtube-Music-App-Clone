import 'package:flutter/material.dart';

import 'package:my_first_app/Explore.dart';
import 'home.dart';

import 'Explore.dart';
import 'Library.dart';

void main() => runApp(MainScreen());

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  
  int index = 0;
  List<Widget> pageList = <Widget>[Home(), Explore(), Library()];
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          
          title: Padding(
            padding: EdgeInsets.only(left: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.play_arrow_outlined,
                  size: 30,
                ),
                Text(
                  'Music',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Montserrat",
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                debugPrint("Search");
              },
              tooltip: "Search",
            ),
            Padding(
              padding: EdgeInsets.only(right: 0),
              child: IconButton(
                icon: CircleAvatar(
                  //Later cahnge with backgrou
                  child: Icon(
                    Icons.perm_identity_outlined,
                  ),
                ),
                onPressed: () => debugPrint("Profile"),
                tooltip: "Profile",
              ),
            )
          ],
        ),
        body: pageList[index],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey[900],
            currentIndex: index,
            elevation: 30,
            onTap: (value) {
              setState(() {
                index = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.red[400],
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music),
                label: "Library",
              ),
            ]),
      ),
    );
  }
}
