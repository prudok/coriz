import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzylite/core/core.dart';
import 'package:quizzylite/presentation/views/edit_quiz_view.dart';
import 'package:quizzylite/presentation/widgets/widgets.dart';

class DictionaryView extends ConsumerWidget {
  const DictionaryView({super.key});
  static const String widgetName = 'Dictionary';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dictionary'),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: AppColors.primary,
            unselectedLabelColor: Colors.grey,
            labelColor: AppColors.primary,
            tabs: [
              Text('Favorites', style: AppTextStyles.bodyLarge),
              Text('New', style: AppTextStyles.bodyLarge),
              Text('Learned', style: AppTextStyles.bodyLarge),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            FavoritedQuizzesList(),
            NewQuizzesList(),
            LearnedQuizzesList(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.push(EditQuizView.routeName);
          },
          backgroundColor: AppColors.primary,
          child: const Icon(Icons.add, color: Colors.black),
        ),
      ),
    );
  }
}
