import 'package:flutter/material.dart';
import 'package:mony_cv/app/navigation/mobile_menu.dart';
import 'package:mony_cv/constants/colors.dart';
import 'package:mony_cv/constants/dimensions.dart';
import 'package:mony_cv/constants/text_strings.dart';

class AppNavigationBar extends StatelessWidget {
  final Map<String, GlobalKey> sectionKeys;
  final Function(String) onNavigate;

  const AppNavigationBar({
    super.key,
    required this.sectionKeys,
    required this.onNavigate,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < Breakpoints.mobile;

    return Container(
      color: AppColors.foreground,
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth < 400 ? 12 : 16,
        vertical: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo - Fixed width
          SizedBox(
            width: screenWidth * 0.4,
            child: _buildLogo(context),
          ),
          
          // Desktop Navigation or Mobile Menu Button
          if (!isMobile)
            Flexible(
              child: _buildDesktopNavigation(screenWidth),
            )
          else
            _buildMobileMenuButton(context),
        ],
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => onNavigate('intro'),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.code,
              color: AppColors.orange,
              size: 24,
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                TextStrings.name.split(' ')[0],
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: AppColors.orange,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDesktopNavigation(double screenWidth) {
    // Use SingleChildScrollView for horizontal scrolling on very small desktop screens
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildNavItem('Intro', 'intro'),
          _buildNavItem('Skills', 'skills'),
          _buildNavItem('Experience', 'experience'),
          _buildNavItem('Education', 'education'),
          _buildNavItem('Projects', 'projects'),
          _buildNavItem('About', 'story'),
        ],
      ),
    );
  }

  Widget _buildNavItem(String title, String key) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => onNavigate(key),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.text,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMobileMenuButton(BuildContext context) {
    return Container(
      width: 48,
      alignment: Alignment.centerRight,
      child: IconButton(
        icon: const Icon(Icons.menu, color: AppColors.text, size: 24),
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        onPressed: () => _showMobileMenu(context),
      ),
    );
  }

  void _showMobileMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.foreground,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return MobileMenu(
          sectionKeys: sectionKeys,
          onNavigate: (key) {
            Navigator.pop(context);
            onNavigate(key);
          },
        );
      },
    );
  }
}