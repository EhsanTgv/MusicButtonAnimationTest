import 'package:flutter/material.dart';

import 'blob.dart';

class PlayButton extends StatefulWidget {
  final bool initialIsPlaying;
  final Icon playIcon;
  final Icon pauseIcon;
  final VoidCallback onPressed;

  PlayButton({
    @required this.onPressed,
    this.initialIsPlaying = false,
    this.playIcon = const Icon(Icons.play_arrow),
    this.pauseIcon = const Icon(Icons.pause),
  }) : assert(onPressed != null);

  @override
  _PlayButtonState createState() => _PlayButtonState();
}

class _PlayButtonState extends State<PlayButton> {
  bool isPlaying;

  double _rotation = 0;
  double _scale = 0.85;

  @override
  void initState() {
    isPlaying = widget.initialIsPlaying;
    super.initState();
  }

  void _onToggle() {
    setState(() {
      isPlaying = !isPlaying;
      _scale = _scale == 1 ? .85 : 1;
    });
    widget.onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: 48, minHeight: 48),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Blob(
            color: Color(0xff0092ff), // color blue
            scale: _scale,
            rotation: _rotation,
          ),
          Blob(
            color: Color(0xff4ac7b7), // color green
            scale: _scale,
            rotation: _rotation * 2 - 30, // offset angle from _rotation
          ),
          Blob(
            color: Color(0xffa4a6f6), // color purple
            scale: _scale,
            rotation: _rotation * 3 - 45, // offset angle from _rotation
          ),
          Container(
            constraints: BoxConstraints.expand(),
            child: IconButton(
              icon: isPlaying ? widget.pauseIcon : widget.playIcon,
              onPressed: _onToggle,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
