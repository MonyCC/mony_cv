import 'package:flutter/material.dart';
import 'package:mony_cv/constants/asset_paths.dart';
import 'package:mony_cv/constants/colors.dart';
import 'package:mony_cv/constants/dimensions.dart';
import 'package:mony_cv/constants/text_strings.dart';
import 'package:mony_cv/widgets/common/custom_textbox.dart';
import 'package:mony_cv/widgets/common/section_widget.dart';
import 'package:mony_cv/widgets/social/social_cv_widget.dart';
class MyStorySection extends StatelessWidget {
  const MyStorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      backgroundColor: AppColors.background,
      title: TextStrings.storyTitle,
      titleColor: AppColors.orange,
      description: TextStrings.storyDescription,
      topWidget: Column(
        children: [
          CircleAvatar(
            backgroundColor: AppColors.transparent,
            radius: Dimensions.avatarLarge,
            child: Image.asset(
              AssetPaths.largeAvatar,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: Dimensions.lg),
        ],
      ),
      bottomWidget: Column(
        children: [
          const SocialCVWidget(),
          const SizedBox(height: Dimensions.lg),
          CustomTextbox(text: TextStrings.footer),
        ],
      ),
      showBottomSeparator: true,
    );
  }
}