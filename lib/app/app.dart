import 'package:flutter/material.dart';
import 'package:mony_cv/app/navigation/navigation_bar.dart';
import 'package:mony_cv/constants/colors.dart';
import 'package:mony_cv/sections/intro_section.dart';
import 'package:mony_cv/sections/skills_section.dart';
import 'package:mony_cv/sections/experience_section.dart';
import 'package:mony_cv/sections/education_section.dart';
import 'package:mony_cv/sections/projects_section.dart';
import 'package:mony_cv/sections/my_story_section.dart';

class MyCVHomePage extends StatefulWidget {
  const MyCVHomePage({super.key});

  @override
  State<MyCVHomePage> createState() => _MyCVHomePageState();
}

class _MyCVHomePageState extends State<MyCVHomePage> {
  final ScrollController _scrollController = ScrollController();
  final Map<String, GlobalKey> _sectionKeys = {
    'intro': GlobalKey(),
    'skills': GlobalKey(),
    'experience': GlobalKey(),
    'education': GlobalKey(),
    'projects': GlobalKey(),
    'story': GlobalKey(),
  };

  void _scrollToSection(String key) {
    final context = _sectionKeys[key]?.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        alignment: 0.1,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints(minWidth: 320),
          child: Column(
            children: [
              AppNavigationBar(
                sectionKeys: _sectionKeys,
                onNavigate: _scrollToSection,
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Container(
                    constraints: const BoxConstraints(minWidth: 320),
                    child: Column(
                      children: [
                        IntroSection(key: _sectionKeys['intro']),
                        SkillsSection(key: _sectionKeys['skills']),
                        ExperienceSection(key: _sectionKeys['experience']),
                        EducationSection(key: _sectionKeys['education']),
                        ProjectsSection(key: _sectionKeys['projects']),
                        MyStorySection(key: _sectionKeys['story']),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}