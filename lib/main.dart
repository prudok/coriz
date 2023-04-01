import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'presentation/widgets/quizzlite.dart';

void main() {
  runApp(
    const ProviderScope(child: QuizzLite()),
  );
}
