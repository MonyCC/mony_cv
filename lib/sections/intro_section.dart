import 'package:flutter/material.dart';
import 'package:mony_cv/constants/asset_paths.dart';
import 'package:mony_cv/constants/colors.dart';
import 'package:mony_cv/constants/dimensions.dart';
import 'package:mony_cv/constants/text_strings.dart';
import 'package:mony_cv/widgets/common/section_widget.dart';
import 'package:mony_cv/widgets/social/social_cv_widget.dart';
class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      backgroundColor: AppColors.background,
      title: TextStrings.introTitle,
      titleColor: AppColors.orange,
      description: TextStrings.introDescription,
      topWidget: _buildTopContent(),
      bottomWidget: const SocialCVWidget(),
      showBottomSeparator: true, 
    );
  }

  Widget _buildTopContent() {
    return Column(
      children: [
        CircleAvatar(
          radius: Dimensions.avatarSmall,
          backgroundColor: AppColors.transparent,
          child: Image.asset(
            AssetPaths.smallAvatar,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: Dimensions.lg),
        const Text(
          TextStrings.name,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: AppColors.text,
          ),
        ),
        const SizedBox(height: Dimensions.md),
      ],
    );
  }
}