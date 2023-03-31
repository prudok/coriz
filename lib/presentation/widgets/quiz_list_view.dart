import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

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
        )
      ],
    );
  }
}
