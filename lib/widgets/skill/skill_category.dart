import 'package:flutter/material.dart';
import 'package:mony_cv/constants/colors.dart';
import 'package:mony_cv/widgets/skill/responsive_skill_grid.dart';

class SkillCategory extends StatelessWidget {
  final String title;
  final List<Map<String, String>> skills;
  final Color borderColor;
  final IconData? customIcon;
  
  const SkillCategory({
    super.key,
    required this.title,
    required this.skills,
    this.borderColor = AppColors.blue,
    this.customIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.foreground,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                customIcon ?? _getCategoryIcon(title),
                color: borderColor,
                size: 22,
              ),
              const SizedBox(width: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  color: borderColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ResponsiveSkillGrid(skills: skills),
        ],
      ),
    );
  }

  IconData _getCategoryIcon(String title) {
    if (title.contains('Language')) return Icons.code;
    if (title.contains('Game')) return Icons.sports_esports;
    if (title.contains('Embedded')) return Icons.memory;
    if (title.contains('Tools')) return Icons.build;
    return Icons.extension;
  }
}