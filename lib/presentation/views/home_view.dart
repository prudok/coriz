import 'package:flutter/material.dart';
import 'package:quizzylite/core/app_colors.dart';
import 'package:quizzylite/presentation/views/dictionary_view.dart';
import 'package:quizzylite/presentation/views/settings_view.dart';
import 'package:quizzylite/presentation/widgets/card_swiper.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

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
      appBar: _selectedIndex != 1
          ? AppBar(
              title: _viewsAppBarTitles.elementAt(_selectedIndex),
              centerTitle: true,
            )
          : null,
      body: _viewsOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,
        unselectedFontSize: 15,
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
        selectedItemColor: AppColors.primary,
        onTap: _onItemTapped,
      ),
    );
  }
}
