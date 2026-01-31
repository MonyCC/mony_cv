import 'package:flutter/material.dart';
import 'package:mony_cv/constants/colors.dart';
import 'package:mony_cv/models/project_item.dart';

class ProjectCard extends StatelessWidget {
  final ProjectItem project;
  
  const ProjectCard({
    super.key,
    required this.project,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.foreground,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                project.title,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: AppColors.orange,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                project.timeline,
                style: const TextStyle(
                  color: AppColors.blue,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 20),
          
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: project.techStack.map((tech) {
              return Chip(
                label: Text(
                  tech,
                  style: const TextStyle(fontSize: 12),
                ),
                backgroundColor: AppColors.background,
                side: const BorderSide(color: AppColors.blue),
              );
            }).toList(),
          ),
          
          const SizedBox(height: 20),
          
          Text(
            project.description,
            style: const TextStyle(
              fontSize: 14,
              height: 1.6,
              color: Colors.white70,
            ),
          ),
          
          if (project.features.isNotEmpty) ...[
            const SizedBox(height: 20),
            const Text(
              'Key Features:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.green,
              ),
            ),
            const SizedBox(height: 10),
            ...project.features.map((feature) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.check_circle,
                      color: AppColors.green,
                      size: 16,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        feature,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ],
          
          if (project.responsibilities.isNotEmpty) ...[
            const SizedBox(height: 20),
            const Text(
              'My Responsibilities:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.purple,
              ),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: project.responsibilities.map((resp) {
                return Chip(
                  label: Text(
                    resp,
                    style: const TextStyle(fontSize: 12),
                  ),
                  backgroundColor: AppColors.background,
                  side: const BorderSide(color: AppColors.purple),
                );
              }).toList(),
            ),
          ],
        ],
      ),
    );
  }
}