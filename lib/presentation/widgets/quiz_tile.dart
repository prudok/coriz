import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../views/edit_quiz_view.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';

class QuizTile extends StatefulWidget {
  const QuizTile({Key? key}) : super(key: key);

  @override
  State<QuizTile> createState() => _QuizTileState();
}

class _QuizTileState extends State<QuizTile> {
  bool _isFavoriteSelected = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text(
        'Word',
        style: AppTextStyles.bodyLarge,
      ),
      subtitle: const Text(
        'Hello world',
        style: AppTextStyles.bodyMedium,
        softWrap: true,
      ),
      tileColor: AppColors.lightGrey,
      trailing: Wrap(
        children: [
          IconButton(
            onPressed: () {
              context.push(EditQuizView.routeName);
            },
            icon: const Icon(
              Icons.edit,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _isFavoriteSelected = !_isFavoriteSelected;
              });
            },
            icon: Icon(
              _isFavoriteSelected ? Icons.star : Icons.star_border_outlined,
              size: 30,
              color: AppColors.secondary,
            ),
          ),
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      contentPadding:
          const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
    );
  }
}
