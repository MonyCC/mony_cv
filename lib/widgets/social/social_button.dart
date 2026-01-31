import 'package:flutter/material.dart';
import 'package:mony_cv/constants/colors.dart';
import 'package:mony_cv/constants/dimensions.dart';
import 'package:mony_cv/models/social_button_type.dart';

class SocialButton extends StatefulWidget {
  final SocialButtonType type;
  final VoidCallback onPressed;

  const SocialButton({
    super.key,
    required this.type,
    required this.onPressed,
  });

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimensions.sm),
      child: InkWell(
        onHover: (hovering) => setState(() => _isHovering = hovering),
        onTap: widget.onPressed,
        child: Image.asset(
          widget.type.iconPath,
          color: _isHovering ? AppColors.white : AppColors.text,
          height: widget.type.iconSize,
        ),
      ),
    );
  }
}