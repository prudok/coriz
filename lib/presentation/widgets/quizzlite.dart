import 'package:flutter/material.dart';

import '../../config/themes/dark_blue_theme/dark_blue_theme.dart';
import '../views/home_view.dart';

class QuizzLite extends StatelessWidget {
  const QuizzLite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkBlueTheme(),
      themeMode: ThemeMode.system,
      home: const HomeView(),
    );
  }
}
