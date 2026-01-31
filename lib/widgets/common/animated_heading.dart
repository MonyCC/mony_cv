import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedHeading extends StatelessWidget {
  final String text;
  final TextStyle style;
  final bool repeatAnimation;

  const AnimatedHeading({
    super.key,
    required this.text,
    required this.style,
    this.repeatAnimation = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            text,
            textStyle: style,
            textAlign: TextAlign.center,
            speed: const Duration(milliseconds: 100),
            cursor: '|',
          ),
        ],
        totalRepeatCount: repeatAnimation ? 1000 : 1, // Repeat many times or just once
        pause: const Duration(milliseconds: 2000),
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
        onTap: () {
          print("AnimatedHeading tapped!");
        },
      ),
    );
  }
}