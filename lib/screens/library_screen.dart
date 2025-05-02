import 'package:flutter/material.dart';

class LibraryScreen extends StatelessWidget {
  final List<String> historyVideos = [
    'Flutter Tutorial for Beginners',
    'Dart Programming Language',
    'State Management in Flutter',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        Text(
          'History',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        ...historyVideos.map((video) => ListTile(
              title: Text(video),
              leading: Icon(Icons.history),
              onTap: () {
                // TODO: Navigate to video player
              },
            )),
      ],
    );
  }
}
