import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> videos = [
    {
      'thumbnail': 'https://i.ytimg.com/vi/1roy4o4tqQM/hqdefault.jpg',
      'title': 'Flutter Tutorial for Beginners',
      'channel': 'Flutter Channel',
      'views': '1.2M views',
      'duration': '12:34',
    },
    {
      'thumbnail': 'https://i.ytimg.com/vi/fq4N0hgOWzU/hqdefault.jpg',
      'title': 'Dart Programming Language',
      'channel': 'Code Academy',
      'views': '850K views',
      'duration': '8:45',
    },
    {
      'thumbnail': 'https://i.ytimg.com/vi/1gDhl4leEzA/hqdefault.jpg',
      'title': 'State Management in Flutter',
      'channel': 'Techie Blossom',
      'views': '500K views',
      'duration': '15:20',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final video = videos[index];
        return ListTile(
          contentPadding: EdgeInsets.all(8),
          leading: Stack(
            children: [
              Image.network(
                video['thumbnail']!,
                width: 120,
                height: 70,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 4,
                right: 4,
                child: Container(
                  color: Colors.black87,
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  child: Text(
                    video['duration']!,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            video['title']!,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('${video['channel']} • ${video['views']}'),
          onTap: () {
            // TODO: Navigate to video player screen
          },
        );
      },
    );
  }
}
