import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

import 'dictionary_view.dart';
import 'settings_view.dart';
import '../widgets/quiz_card.dart';
import '../../core/constants/app_colors.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  static const _viewsAppBarTitles = <Text>[
    Text('Quiz'),
    Text('Dictionary'),
    Text('Settings'),
  ];
  static const _viewsOptions = <Widget>[
    HomeListView(),
    DictionaryView(),
    SettingsView(), //TODO: add settings view
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _viewsAppBarTitles.elementAt(_selectedIndex),
        centerTitle: true,
      ),
      body: _viewsOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Dictionary',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.secondary,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeListView extends StatelessWidget {
  const HomeListView({
    super.key,
  });

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
