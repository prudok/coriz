import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/routes/router.dart';
import '../../config/themes/dark_blue_theme/dark_blue_theme.dart';

class QuizzLite extends ConsumerWidget {
  const QuizzLite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: darkBlueTheme(),
      themeMode: ThemeMode.system,
    );
  }
}

