import 'package:flutter/material.dart';
import 'lib/screens/home_screen.dart';
import 'lib/screens/shorts_screen.dart';
import 'lib/screens/subscriptions_screen.dart';
import 'lib/screens/library_screen.dart';
import 'lib/screens/video_player_screen.dart';
import 'lib/screens/search_screen.dart';
import 'lib/screens/sign_in_screen.dart';

void main() {
  runApp(YouTubeCloneApp());
}

class YouTubeCloneApp extends StatefulWidget {
  @override
  _YouTubeCloneAppState createState() => _YouTubeCloneAppState();
}

class _YouTubeCloneAppState extends State<YouTubeCloneApp> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ShortsScreen(),
    SubscriptionsScreen(),
    LibraryScreen(),
    SearchScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YouTube Clone',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('YouTube Clone'),
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow),
              label: 'Shorts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions),
              label: 'Subscriptions',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library),
              label: 'Library',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
