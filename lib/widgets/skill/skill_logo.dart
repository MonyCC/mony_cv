import 'package:flutter/material.dart';
import 'package:mony_cv/constants/colors.dart';

class SkillLogo extends StatelessWidget {
  final String imagePath;
  final String label;
  final double size;

  const SkillLogo({
    super.key,
    required this.imagePath,
    required this.label,
    this.size = 70,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Center(
              child: _buildLogo(size * 0.7),
            ),
          ),
          const SizedBox(height: 6),
          SizedBox(
            width: size,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 11,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLogo(double imageSize) {
    try {
      return SizedBox(
        width: imageSize,
        height: imageSize,
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
        ),
      );
    } catch (e) {
      return Icon(
        _getFallbackIcon(),
        size: imageSize * 0.6,
        color: _getSkillColor(),
      );
    }
  }

  IconData _getFallbackIcon() {
    final lowerLabel = label.toLowerCase();
    if (lowerLabel.contains('c++') || lowerLabel.contains('cpp')) return Icons.code;
    if (lowerLabel.contains('c#')) return Icons.code;
    if (lowerLabel.contains('javascript')) return Icons.javascript;
    if (lowerLabel.contains('java')) return Icons.coffee;
    if (lowerLabel.contains('python')) return Icons.coffee;
    if (lowerLabel.contains('dart')) return Icons.flutter_dash;
    if (lowerLabel.contains('unreal')) return Icons.sports_esports;
    if (lowerLabel.contains('unity')) return Icons.videogame_asset;
    if (lowerLabel.contains('godot')) return Icons.games;
    if (lowerLabel.contains('arduino')) return Icons.memory;
    if (lowerLabel.contains('esp')) return Icons.wifi;
    if (lowerLabel.contains('raspberry')) return Icons.computer;
    if (lowerLabel.contains('home') || lowerLabel.contains('assistant')) return Icons.home;
    if (lowerLabel.contains('figma')) return Icons.design_services;
    if (lowerLabel.contains('github')) return Icons.code;
    if (lowerLabel.contains('sql')) return Icons.storage;
    if (lowerLabel.contains('telegram')) return Icons.telegram;
    if (lowerLabel.contains('yaml')) return Icons.description;
    return Icons.code;
  }

  Color _getSkillColor() {
    final lowerLabel = label.toLowerCase();
    
    // Programming Languages
    if (lowerLabel.contains('c++') || lowerLabel.contains('cpp')) return const Color(0xFF00599C);
    if (lowerLabel.contains('c#')) return const Color(0xFF68217A);
    if (lowerLabel.contains('java')) return const Color(0xFF007396);
    if (lowerLabel.contains('javascript')) return const Color(0xFFF7DF1E);
    if (lowerLabel.contains('python')) return const Color(0xFF3776AB);
    if (lowerLabel.contains('dart')) return const Color(0xFF00B4AB);
    
    // Game Development
    if (lowerLabel.contains('unreal')) return Colors.black;
    if (lowerLabel.contains('unity')) return const Color(0xFF212121);
    if (lowerLabel.contains('godot')) return const Color(0xFF478CBF);
    
    // Embedded & IoT
    if (lowerLabel.contains('arduino')) return const Color(0xFF00979D);
    if (lowerLabel.contains('esp')) return const Color(0xFFFF6700);
    if (lowerLabel.contains('raspberry')) return const Color(0xFFC51A4A);
    if (lowerLabel.contains('home') || lowerLabel.contains('assistant')) return const Color(0xFF41BDF5);
    
    // Tools
    if (lowerLabel.contains('figma')) return const Color(0xFFF24E1E);
    if (lowerLabel.contains('github')) return Colors.black;
    if (lowerLabel.contains('sql')) return const Color(0xFF003B57);
    if (lowerLabel.contains('telegram')) return const Color(0xFF26A5E4);
    if (lowerLabel.contains('yaml')) return const Color(0xFFCB171E);
    
    // Default color if none of the above matches
    return AppColors.blue; // Or use: return const Color(0xFF6FA7D6);
  }
}