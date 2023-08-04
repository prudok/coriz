import 'package:flutter/material.dart';
import 'package:quizzylite/core/app_text_styles.dart';
import 'package:quizzylite/generated/l10n.dart';

class TermsOfUseView extends StatelessWidget {
  const TermsOfUseView({super.key});

  static const routeName = '/terms-of-use';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).termsOfUse),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                S.of(context).toAddNewQuizCard,
                style: AppTextStyles.titleMedium,
              ),
            ),
            Text(
              S.of(context).firstClickOnAddButton,
              style: AppTextStyles.bodyLarge,
            ),
            Text(
              S.of(context).secondFillTheForm,
              style: AppTextStyles.bodyLarge,
            ),
            Text(
              S.of(context).thirdStarYourNewQuizCard,
              style: AppTextStyles.bodyLarge,
            ),
            Text(
              S.of(context).fourthDoubleClickOnCard,
              style: AppTextStyles.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
