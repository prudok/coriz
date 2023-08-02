import 'package:flutter/material.dart';
import 'package:quizzylite/core/app_text_styles.dart';

class AboutAppView extends StatelessWidget {
  const AboutAppView({super.key});

  static const String routeName = '/about-app';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About App'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Project Name: Coriz',
                style: AppTextStyles.titleMedium,
              ),
            ),
            Text(
              'Github Repo: https://github.com/rel1nce/coriz',
              style: AppTextStyles.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
