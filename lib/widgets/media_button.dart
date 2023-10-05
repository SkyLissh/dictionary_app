import "package:flutter/material.dart";
import "package:audioplayers/audioplayers.dart";

class MediaButton extends StatefulWidget {
  final Source source;

  const MediaButton({super.key, required this.source});

  @override
  State<MediaButton> createState() => _MediaButtonState();
}

class _MediaButtonState extends State<MediaButton>
    with SingleTickerProviderStateMixin {
  final _player = AudioPlayer();
  late final AnimationController _controller;

  Future<void> _onTap() async {
    if (_player.state == PlayerState.playing) {
      await _player.pause();
      _controller.reverse();
      return;
    }

    _controller.forward();
    await _player.play(widget.source);
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _player.onPlayerStateChanged.listen((event) {
      if (event == PlayerState.paused || event == PlayerState.completed) {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return IconButton.filledTonal(
      onPressed: _onTap,
      icon: AnimatedIcon(
        icon: AnimatedIcons.play_pause,
        progress: _controller,
        color: theme.colorScheme.primary,
      ),
    );
  }
}
