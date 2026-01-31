import 'package:flutter/material.dart';
import 'package:mony_cv/constants/colors.dart';
import 'package:mony_cv/constants/dimensions.dart';
import 'package:mony_cv/constants/text_strings.dart';
import 'package:mony_cv/widgets/common/section_widget.dart';
import 'package:mony_cv/widgets/expansion/custom_expansion_tile.dart';

class ExperienceSection extends StatelessWidget {
  const ExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      backgroundColor: AppColors.background,
      title: TextStrings.experienceTitle,
      titleColor: AppColors.blue,
      bottomWidget: SizedBox(
        width: MediaQuery.of(context).size.width * Dimensions.screenWidthFactor,
        child: const Column(
          children: [
            CustomExpansionTile(
              title: TextStrings.experienceTitleIntern,
              description: TextStrings.experienceDescriptionIntern,
            ),
            CustomExpansionTile(
              title: TextStrings.experienceTitleVolunteer,
              description: TextStrings.experienceDescriptionVolunteer,
            ),
          ],
        ),
      ),
      showBottomSeparator: true, 
    );
  }
}