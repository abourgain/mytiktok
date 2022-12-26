import 'dart:ui';
import 'package:flutter/material.dart';

class ShareWidget extends StatelessWidget {
  const ShareWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.1),
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () => print("Like !"),
                    icon: const Icon(
                      Icons.share_rounded,
                      color: Colors.white,
                      size: 25.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Text("1.4K",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.8,
            ))
      ],
    );
  }
}
