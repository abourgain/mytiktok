import 'package:flutter/material.dart';
import 'package:mytiktok/components/VideoPlayerComponent.dart';

const List<Map<String, dynamic>> data = [
  {
    "profile": {"username": "johndoe"},
    "media": "assets/videos/video-1.MOV",
    "description":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
  },
  {
    "profile": {"username": "amandajohns"},
    "media": "assets/videos/video-2.MOV",
    "description":
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old."
  },
  {
    "profile": {"username": "fabriceluchini"},
    "media": "assets/videos/video-3.MOV",
    "description":
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters."
  },
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          scrollDirection: Axis.vertical,
          children: data.map((item) {
            return VideoPlayerComponent(
              media: item["media"],
            );
          }).toList()),
    );
  }
}
