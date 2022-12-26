import 'package:flutter/material.dart';
import 'package:mytiktok/components/Profile/ProfileComponent.dart';
import 'package:mytiktok/components/VideoPlayer/VideoPlayerComponent.dart';

class FeedComponent extends StatelessWidget {
  final Map<String, dynamic> item;

  const FeedComponent({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      VideoPlayerComponent(
        media: item["media"],
      ),
      Positioned(
        bottom: 100.0,
        left: 20.0,
        right: 100.0,
        child: ProfileComponent(item: item),
      ),
    ]);
  }
}
