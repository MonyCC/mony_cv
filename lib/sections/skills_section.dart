import 'package:flutter/material.dart';
import 'package:mony_cv/constants/asset_paths.dart';
import 'package:mony_cv/constants/colors.dart';
import 'package:mony_cv/constants/text_strings.dart';
import 'package:mony_cv/widgets/common/section_widget.dart';
import 'package:mony_cv/widgets/skill/skill_category.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      backgroundColor: AppColors.background,
      title: TextStrings.skillsTitle,
      titleColor: AppColors.yellow,
      bottomWidget: Container(
        constraints: const BoxConstraints(maxWidth: 1200),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: const Column(
          children: [
            SkillCategory(
              title: 'Programming Languages',
              skills: [
                {'name': 'C++', 'logo': AssetPaths.cppLogo},
                {'name': 'C#', 'logo': AssetPaths.csharpLogo},
                {'name': 'JavaScript', 'logo': AssetPaths.javascriptLogo},
                {'name': 'Java', 'logo': AssetPaths.javaLogo},
                {'name': 'Python', 'logo': AssetPaths.pythonLogo},
                {'name': 'Dart', 'logo': AssetPaths.dartLogo},
              ],
              borderColor: AppColors.green,
            ),
            SizedBox(height: 20),
            SkillCategory(
              title: 'Game Development',
              skills: [
                {'name': 'Unreal Engine', 'logo': AssetPaths.unrealLogo},
                {'name': 'Unity', 'logo': AssetPaths.unityLogo},
                {'name': 'Godot', 'logo': AssetPaths.godotLogo},
              ],
              borderColor: AppColors.orange,
            ),
            const SizedBox(height: 20),
            SkillCategory(
              title: 'Embedded Systems & IoT',
              skills: [
                {'name': 'Arduino', 'logo': AssetPaths.arduinoLogo},
                {'name': 'ESP32', 'logo': AssetPaths.esp32Logo},
                {'name': 'Raspberry Pi', 'logo': AssetPaths.raspberryPiLogo},
                {'name': 'Home Assistant', 'logo': AssetPaths.homeAssistantLogo},
              ],
              borderColor: AppColors.blue,
            ),
            const SizedBox(height: 20),
            SkillCategory(
              title: 'Tools & Platforms',
              skills: [
                {'name': 'Figma', 'logo': AssetPaths.figmaLogo},
                {'name': 'GitHub', 'logo': AssetPaths.githubLogo},
              ],
              borderColor: AppColors.purple,
            ),
          ],
        ),
      ),
      showBottomSeparator: true, 
    );
  }
}