import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzylite/core/core.dart';
import 'package:quizzylite/generated/l10n.dart';
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
          title: Text(S.of(context).dictionary),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: AppColors.primary,
            unselectedLabelColor: Colors.grey,
            labelColor: AppColors.primary,
            tabs: [
              Text(S.of(context).favorites, style: AppTextStyles.bodyLarge),
              Text(S.of(context).newWord, style: AppTextStyles.bodyLarge),
              Text(S.of(context).learned, style: AppTextStyles.bodyLarge),
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
