import 'package:flutter/material.dart';

class ShortsScreen extends StatelessWidget {
  final List<String> shortsVideos = [
    'https://i.ytimg.com/vi/short1/hqdefault.jpg',
    'https://i.ytimg.com/vi/short2/hqdefault.jpg',
    'https://i.ytimg.com/vi/short3/hqdefault.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: shortsVideos.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(8),
          width: 150,
          child: Image.network(
            shortsVideos[index],
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
