import 'package:flutter/material.dart';
import 'package:mony_cv/constants/colors.dart';
import 'package:mony_cv/constants/dimensions.dart';
import 'package:mony_cv/constants/text_strings.dart';
import 'package:mony_cv/models/social_button_type.dart';
import 'package:mony_cv/utils/link_opener.dart';
import 'package:mony_cv/utils/pdf_opener.dart';
import 'package:mony_cv/widgets/social/social_button.dart';
class SocialCVWidget extends StatelessWidget {
  const SocialCVWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(Dimensions.lg),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialButton(
                type: SocialButtonType.gitHub,
                onPressed: LinkOpener.openGitHub,
              ),
              SocialButton(
                type: SocialButtonType.linkedIn,
                onPressed: LinkOpener.openLinkedIn,
              ),
              SocialButton(
                type: SocialButtonType.telegram,
                onPressed: LinkOpener.openTelegram,
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () => PDFOpener().openCV(),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(Dimensions.sm),
            backgroundColor: AppColors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimensions.buttonRadius),
            ),
          ),
          child: const Text(
            TextStrings.downloadCV,
            style: TextStyle(
              fontSize: 18,
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}