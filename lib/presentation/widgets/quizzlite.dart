import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/routes/router.dart';
import '../../config/themes/dark_amber_theme/dark_amber_theme.dart';
import '../../config/themes/dark_amber_theme/light_amer_theme.dart';

class QuizzLite extends ConsumerWidget {
  const QuizzLite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: lightAmberTheme(),
      darkTheme: darkAmberTheme(),
      themeMode: ThemeMode.dark,
    );
  }
}

