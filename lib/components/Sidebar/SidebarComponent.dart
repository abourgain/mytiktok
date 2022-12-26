import 'package:flutter/material.dart';
import 'package:mytiktok/widgets/AvatarWidget.dart';
import 'package:mytiktok/widgets/CommentWidget.dart';
import 'package:mytiktok/widgets/LikeWidget.dart';
import 'package:mytiktok/widgets/ShareWidget.dart';

class SidebarComponent extends StatelessWidget {
  final Map<String, dynamic> item;

  const SidebarComponent({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: AvatarWidget(profile: item['profile']),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: LikeWidget(
            count: item["likeCount"],
            onPressed: () => print("Like !"),
          ),
        ),
        CommentWidget(
          count: item["commentCount"],
          onPressed: () => print("Comment !"),
        ),
      ],
    );
  }
}
