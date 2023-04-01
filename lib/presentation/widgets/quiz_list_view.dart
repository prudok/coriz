import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:quizzylite/core/constants/app_colors.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzylite/presentation/views/edit_quiz_view.dart';

import 'quiz_card.dart';

class QuizCardsView extends StatelessWidget {
  const QuizCardsView({
    super.key,
  });

  static const String widgetName = 'Quiz';

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(5.0),
      children: [
        Swiper(
          itemWidth: MediaQuery.of(context).size.width,
          itemHeight: MediaQuery.of(context).size.height / 2,
          itemBuilder: (context, index) {
            return const QuizCard();
          },
          itemCount: 10,
          layout: SwiperLayout.TINDER,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.remove,
                  color: Colors.red,
                  size: 40,
                )),
            IconButton(
                onPressed: () {
                  context.push(EditQuizView.routeName);
                },
                icon: Icon(
                  Icons.add,
                  color: AppColors.green,
                  size: 40,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  color: Colors.grey,
                  size: 40,
                )),
          ],
        ),
      ],
    );
  }
}
