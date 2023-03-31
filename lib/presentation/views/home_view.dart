import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../widgets/learned_quizzes_list.dart';
import '../widgets/quiz_list_view.dart';
import 'dictionary_view.dart';
import 'settings_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;
  static const _viewsAppBarTitles = <Text>[
    Text(QuizCardsView.widgetName),
    Text(DictionaryView.widgetName),
    Text(SettingsView.widgetName),
  ];
  static const _viewsOptions = <Widget>[
    QuizCardsView(),
    DictionaryView(),
    SettingsView(),
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

