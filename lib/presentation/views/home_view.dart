import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:quizzylite/presentation/widgets/quizz_card.dart';

// import '../widgets/quizz_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Quiz today?'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          Swiper(
            itemWidth: MediaQuery.of(context).size.width,
            itemHeight: MediaQuery.of(context).size.height / 2,
            itemBuilder: (context, index) {
              return QuizzCard();
            },
            itemCount: 10,
            layout: SwiperLayout.TINDER,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Dictionary',
          )
        ],
      ),
    );
  }
}
