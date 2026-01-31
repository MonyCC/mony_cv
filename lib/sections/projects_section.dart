import 'package:flutter/material.dart';
import 'package:mony_cv/constants/colors.dart';
import 'package:mony_cv/constants/dimensions.dart';
import 'package:mony_cv/constants/text_strings.dart';
import 'package:mony_cv/models/project_item.dart';
import 'package:mony_cv/widgets/common/section_widget.dart';
import 'package:mony_cv/widgets/project/project_carousel.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = [
      ProjectItem(
        title: 'Classicore',
        timeline: 'July 2025 - Present',
        description: 'Smart school system with Home Assistant for remote access and control of actuators in the school environment.',
        techStack: ['Home Assistant', 'ESPHome', 'YAML', 'IoT'],
        features: [
          'Remote access and control of school actuators',
          'Custom dashboard design with Home Assistant',
          'Device entity management and monitoring',
          'Real-time sensor data visualization',
        ],
        responsibilities: [
          'Dashboard design with HA custom Lovelace',
          'Connecting entity devices across areas',
          'Integrating IoT sensors and actuators',
          'Creating automation rules',
        ],
      ),
      ProjectItem(
        title: 'Puzzle Memory Game',
        timeline: 'June 2025',
        description: 'Memory matching game with multiple levels and game modes, built with JavaFX using MVC architecture.',
        techStack: ['JavaFX', 'FXML', 'CSS', 'SQLite', 'MVC'],
        features: [
          'Authentication with SHA-256',
          'Multiple game modes',
          'Shop system with hints',
          'Leaderboard with rankings',
        ],
        responsibilities: [
          'Full-stack development with MVC',
          'Database design with SQLite',
          'User authentication system',
          'Game logic and UI design',
        ],
      ),
      ProjectItem(
        title: 'Smart Home Automation',
        timeline: 'April 2025 - June 2025',
        description: 'Arduino-based home automation with sensors and Telegram bot control.',
        techStack: ['Arduino', 'Telegram Bot', 'C++', 'DHT Sensor', 'RFID'],
        features: [
          'RFID access control',
          'Telegram bot for control',
          'Environmental monitoring',
          'Threshold-based alerts',
        ],
        responsibilities: [
          'Hardware integration',
          'Telegram bot development',
          'Sensor configuration',
          'System deployment',
        ],
      ),
    ];

    return SectionWidget(
      backgroundColor: AppColors.background,
      title: TextStrings.projectsTitle,
      titleColor: AppColors.orange,
      bottomWidget: Container(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width < 768 
              ? Dimensions.md 
              : Dimensions.sectionPadding,
        ),
        child: ProjectCarousel(projects: projects),
      ),
      showBottomSeparator: true,
    );
  }
}