import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CommentWidget extends StatelessWidget {
  final int count;
  final Function()? onPressed;

  const CommentWidget({
    super.key,
    required this.count,
    required this.onPressed,
  });

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
                    onPressed: onPressed,
                    icon: const Icon(
                      Icons.comment_rounded,
                      color: Colors.white,
                      size: 25.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(NumberFormat.compact().format(count),
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.8,
            ))
      ],
    );
  }
}
