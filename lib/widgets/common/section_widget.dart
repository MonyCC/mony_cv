import 'package:flutter/material.dart';
import 'package:mony_cv/widgets/common/animated_heading.dart';

class SectionWidget extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final Color titleColor;
  final String? description;
  final Widget? topWidget;
  final Widget? bottomWidget;
  final bool animateTitle;
  final bool showTopSeparator;
  final bool showBottomSeparator;

  const SectionWidget({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.titleColor,
    this.description,
    this.topWidget,
    this.bottomWidget,
    this.animateTitle = true,
    this.showTopSeparator = false,
    this.showBottomSeparator = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top Separator
        if (showTopSeparator) _buildSeparator(),
        
        // Main Content
        Container(
          color: backgroundColor,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (topWidget != null) topWidget!,
              
              SizedBox(
                width: _calculateWidth(context),
                child: animateTitle
                    ? AnimatedHeading(
                        text: title,
                        style: TextStyle(
                          fontSize: _calculateTitleSize(context),
                          fontWeight: FontWeight.w700,
                          color: titleColor,
                        ),
                        repeatAnimation: false,
                      )
                    : Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: _calculateTitleSize(context),
                          fontWeight: FontWeight.w700,
                          color: titleColor,
                        ),
                      ),
              ),
              
              if (description != null) ...[
                const SizedBox(height: 16),
                SizedBox(
                  width: _calculateWidth(context),
                  child: Text(
                    description!,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                      height: 1.6,
                    ),
                  ),
                ),
              ],
              
              const SizedBox(height: 24),
              
              if (bottomWidget != null)
                SizedBox(
                  width: _calculateWidth(context),
                  child: bottomWidget!,
                )
              else
                const SizedBox(),
            ],
          ),
        ),
        
        // Bottom Separator
        if (showBottomSeparator) _buildSeparator(),
      ],
    );
  }

  Widget _buildSeparator() {
    return Container(
      height: 1,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.transparent,
            titleColor.withOpacity(0.2),
            Colors.transparent,
          ],
          stops: const [0.0, 0.5, 1.0],
        ),
      ),
    );
  }

  double _calculateWidth(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 600) return width * 0.95;
    if (width < 900) return width * 0.9;
    if (width < 1200) return width * 0.8;
    return 1000;
  }

  double _calculateTitleSize(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 600) return 24;
    if (width < 900) return 26;
    return 28;
  }
}