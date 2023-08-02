// ignore_for_file: lines_longer_than_80_chars

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
                'Coriz',
                style: AppTextStyles.titleMedium,
              ),
            ),
            Text(
              'If you have any suggestions how to improve this app, please write to:\n coriz_team@internet.ru',
              style: AppTextStyles.bodyLarge,
            ),
            Text(
              'Star or open an issue on Github.com:\n https://github.com/rel1nce/coriz',
              style: AppTextStyles.bodyLarge,
            ),
            SizedBox(height: 30),
            Text(
              'This is an open source project, any kind of help to improve the App will be appreciated.',
              style: AppTextStyles.bodySmall,
            ),
            SizedBox(height: 10),
            Text(
              "Currently there's only auto-russian translate function, new languages'll be add in future.",
              style: AppTextStyles.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
