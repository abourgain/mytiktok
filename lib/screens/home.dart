import 'package:flutter/material.dart';
import 'package:mytiktok/components/Feed/FeedComponent.dart';

const List<Map<String, dynamic>> data = [
  {
    "profile": {
      "username": "johndoe",
      "avatar": "https://i.pravatar.cc/300?id=1",
    },
    "media": "assets/videos/video-1.MOV",
    "description":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    "likeCount": 14000,
    "commentCount": 12000,
  },
  {
    "profile": {
      "username": "amandajohns",
      "avatar": "https://i.pravatar.cc/300?id=2",
    },
    "media": "assets/videos/video-2.MOV",
    "description":
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    "likeCount": 1400,
    "commentCount": 10,
  },
  {
    "profile": {
      "username": "fabriceluchini",
      "avatar": "https://i.pravatar.cc/300?id=3",
    },
    "media": "assets/videos/video-3.MOV",
    "description":
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.",
    "likeCount": 134000,
    "commentCount": 1900,
  },
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
          scrollDirection: Axis.vertical,
          children: data.map((item) {
            return FeedComponent(
              item: item,
            );
          }).toList()),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          onTap: (value) => print(value),
          backgroundColor: Colors.transparent,
          elevation: 0,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.amber,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: "Messages",
            ),
          ]),
    );
  }
}
