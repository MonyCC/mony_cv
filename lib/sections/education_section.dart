import 'package:flutter/material.dart';
import 'package:mony_cv/constants/colors.dart';
import 'package:mony_cv/constants/dimensions.dart';
import 'package:mony_cv/constants/text_strings.dart';
import 'package:mony_cv/widgets/common/section_widget.dart';
import 'package:mony_cv/widgets/expansion/custom_expansion_tile.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      backgroundColor: AppColors.foreground,
      title: TextStrings.educationTitle,
      titleColor: AppColors.green,
      bottomWidget: SizedBox(
        width: MediaQuery.of(context).size.width * Dimensions.screenWidthFactor,
        child: const Column(
          children: [
            CustomExpansionTile(
              title: TextStrings.educationUniversity,
              description: TextStrings.educationUniversityDescription,
              expandedColor: AppColors.background,
            ),
            CustomExpansionTile(
              title: TextStrings.educationHighSchool,
              description: TextStrings.educationHighSchoolDescription,
              expandedColor: AppColors.background,
            ),
            CustomExpansionTile(
              title: TextStrings.educationHighSchool2,
              description: TextStrings.educationHighSchoolDescription2,
              expandedColor: AppColors.background,
            ),
            CustomExpansionTile(
              title: TextStrings.educationSecondary,
              description: TextStrings.educationSecondaryDescription,
              expandedColor: AppColors.background,
            ),
            CustomExpansionTile(
              title: TextStrings.educationPrimary,
              description: TextStrings.educationPrimaryDescription,
              expandedColor: AppColors.background,
            ),
          ],
        ),
      ),
      showBottomSeparator: true, 
    );
  }
}