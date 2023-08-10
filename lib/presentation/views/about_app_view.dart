// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:quizzylite/core/app_text_styles.dart';
import 'package:quizzylite/generated/l10n.dart';

class AboutAppView extends StatelessWidget {
  const AboutAppView({super.key});

  static const String routeName = '/about-app';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).aboutApp),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                S.of(context).coriz,
                style: AppTextStyles.titleMedium,
              ),
            ),
            Text(
              S.of(context).writeYourSuggestions,
              style: AppTextStyles.bodyLarge,
            ),
            Text(
              S.of(context).starOrOpenIssueOnGithub,
              style: AppTextStyles.bodyLarge,
            ),
            const SizedBox(height: 30),
            Text(
              S.of(context).OpenSource,
              style: AppTextStyles.bodySmall,
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
