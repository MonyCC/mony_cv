import 'package:flutter/material.dart';
import 'package:mony_cv/constants/colors.dart';
import 'package:mony_cv/constants/dimensions.dart';

class CustomExpansionTile extends StatefulWidget {
  final String title;
  final String? description;
  final Widget? widget;
  final Color? expandedColor;

  const CustomExpansionTile({
    super.key,
    required this.title,
    this.description,
    this.widget,
    this.expandedColor,
  });

  @override
  State<CustomExpansionTile> createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _isExpanded
          ? const EdgeInsets.only(bottom: Dimensions.sm)
          : EdgeInsets.zero,
      child: ExpansionTile(
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        expandedAlignment: Alignment.topLeft,
        tilePadding: _isExpanded
            ? const EdgeInsets.symmetric(
                vertical: Dimensions.xs,
                horizontal: Dimensions.sm,
              )
            : const EdgeInsets.symmetric(
                horizontal: Dimensions.sm,
              ),
        childrenPadding: const EdgeInsets.symmetric(
          horizontal: Dimensions.md,
        ),
        textColor: AppColors.text,
        collapsedTextColor: AppColors.text,
        iconColor: AppColors.text,
        collapsedIconColor: AppColors.blue,
        backgroundColor: widget.expandedColor ?? AppColors.foreground,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(Dimensions.tileRadius),
          ),
        ),
        onExpansionChanged: (value) {
          _isExpanded = value;
          setState(() {});
        },
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 14,
            height: 1.5,
            color: AppColors.text,
          ).copyWith(
            color: _isExpanded ? AppColors.blue : AppColors.text,
          ),
        ),
        children: [
          if (widget.description != null)
            Text(
              widget.description!,
              style: const TextStyle(
                fontSize: 14,
                height: 1.5,
                color: AppColors.text,
              ),
            ),
          const SizedBox(height: Dimensions.sm),
          widget.widget ?? Container(),
        ],
      ),
    );
  }
}