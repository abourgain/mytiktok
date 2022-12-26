import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerComponent extends StatefulWidget {
  final String media;

  const VideoPlayerComponent({super.key, required this.media});

  @override
  State<VideoPlayerComponent> createState() => _VideoPlayerComponentState();
}

class _VideoPlayerComponentState extends State<VideoPlayerComponent> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.media)
      ..initialize().then((_) {
        setState(() {});

        //_controller.play();
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _controller.value.isInitialized
            ? SizedBox(
                width: _controller.value.size.width,
                height: _controller.value.size.height,
                child: VideoPlayer(_controller),
              )
            : Container(),
        Positioned(
            bottom: 100.0,
            left: 20.0,
            right: 100.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => print("Go to profile !"),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "@username",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () => print("Show more"),
                    child: const Text(
                      "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
                      style: TextStyle(
                          color: Colors.white, letterSpacing: .6, height: 1.5),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ))
              ],
            ))
      ],
    );
  }
}
