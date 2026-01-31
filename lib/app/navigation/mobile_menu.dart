import 'package:flutter/material.dart';
import 'package:mony_cv/constants/colors.dart';

class MobileMenu extends StatelessWidget {
  final Map<String, GlobalKey> sectionKeys;
  final Function(String) onNavigate;

  const MobileMenu({
    super.key,
    required this.sectionKeys,
    required this.onNavigate,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * 0.8,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Navigation',
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.orange,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: AppColors.text, size: 24),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildMenuItem('Intro', 'intro'),
                _buildMenuItem('Skills', 'skills'),
                _buildMenuItem('Experience', 'experience'),
                _buildMenuItem('Education', 'education'),
                _buildMenuItem('Projects', 'projects'),
                _buildMenuItem('About', 'story'),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(String title, String key) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () => onNavigate(key),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          alignment: Alignment.centerLeft,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.text,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}