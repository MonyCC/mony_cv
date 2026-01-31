import 'package:flutter/material.dart';
import 'package:mony_cv/constants/colors.dart';
import 'package:mony_cv/constants/dimensions.dart';

class CustomTextbox extends StatelessWidget {
  final String text;

  const CustomTextbox({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * Dimensions.screenWidthFactor,
      child: Column(
        children: [
          Text(
            text,
            textAlign: TextAlign.start,
            style: const TextStyle(
              fontSize: 14,
              height: 1.5,
              color: AppColors.text,
            ),
          ),
        ],
      ),
    );
  }
}