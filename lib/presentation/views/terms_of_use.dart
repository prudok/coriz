import 'package:flutter/material.dart';

import '../../core/constants/app_text_styles.dart';

class TermsOfUseView extends StatelessWidget {
  const TermsOfUseView({super.key});

  static const routeName = '/terms-of-use';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms of Use'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'To Add New Quiz Card:',
                style: AppTextStyles.titleMedium,
              ),
            ),
            Text("1. Click On 'Add' Button", style: AppTextStyles.bodyLarge),
            Text("2. Fill The Form", style: AppTextStyles.bodyLarge),
            Text("3. Star Your New Quiz Card", style: AppTextStyles.bodyLarge),
            Text("4. Double Click On Quiz Card To See Concept",
                style: AppTextStyles.bodyLarge),
          ],
        ),
      ),
    );
  }
}
