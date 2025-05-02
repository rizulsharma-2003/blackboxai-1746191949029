import 'package:flutter/material.dart';

class SubscriptionsScreen extends StatelessWidget {
  final List<Map<String, String>> subscriptions = [
    {
      'channel': 'Flutter Dev',
      'thumbnail': 'https://i.ytimg.com/vi/1roy4o4tqQM/hqdefault.jpg',
    },
    {
      'channel': 'Techie Blossom',
      'thumbnail': 'https://i.ytimg.com/vi/1gDhl4leEzA/hqdefault.jpg',
    },
    {
      'channel': 'Code Academy',
      'thumbnail': 'https://i.ytimg.com/vi/fq4N0hgOWzU/hqdefault.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: subscriptions.length,
      itemBuilder: (context, index) {
        final subscription = subscriptions[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(subscription['thumbnail']!),
          ),
          title: Text(subscription['channel']!),
          onTap: () {
            // TODO: Navigate to subscription channel videos
          },
        );
      },
    );
  }
}
