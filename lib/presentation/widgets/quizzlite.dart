import 'package:flutter/material.dart';

import '../../config/routes/router.dart';
import '../../config/themes/dark_blue_theme/dark_blue_theme.dart';

class QuizzLite extends StatelessWidget {
  const QuizzLite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: darkBlueTheme(),
      themeMode: ThemeMode.system,
    );
  }
}
