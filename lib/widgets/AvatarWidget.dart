import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final Map<String, dynamic> profile;

  const AvatarWidget({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: GestureDetector(
            onTap: () => print("Go to user's profile"),
            child: Container(
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  )),
              child: CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage(profile['avatar']),
              ),
            ),
          ),
        ),
        GestureDetector(
            onTap: () => print("Follow the user"),
            child: const CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.pink,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20.0,
              ),
            )),
      ],
    );
  }
}
