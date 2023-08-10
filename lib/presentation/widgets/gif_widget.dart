import 'package:flutter/material.dart';
import 'package:quizzylite/core/app_text_styles.dart';

class NoDataNotify extends StatelessWidget {
  const NoDataNotify({
    required this.gifPath,
    required this.title,
    super.key,
  });

  final String gifPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Image.asset(
            gifPath,
          ),
        ),
        Text(
          title,
          style: AppTextStyles.bodyLarge,
        ),
      ],
    );
  }
}
