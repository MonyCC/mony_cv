import 'package:flutter/material.dart';
import 'package:mony_cv/widgets/skill/skill_logo.dart';

class ResponsiveSkillGrid extends StatelessWidget {
  final List<Map<String, String>> skills;

  const ResponsiveSkillGrid({
    super.key,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final columns = _calculateColumns(constraints.maxWidth);
        
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 0.8, 
          ),
          itemCount: skills.length,
          itemBuilder: (context, index) {
            final skill = skills[index];
            return SkillLogo(
              imagePath: skill['logo']!,
              label: skill['name']!,
              size: 85
            );
          },
        );
      },
    );
  }

  int _calculateColumns(double screenWidth) {
    if (screenWidth < 400) return 3;
    if (screenWidth < 600) return 4;
    if (screenWidth < 900) return 5;
    return 6;
  }
}