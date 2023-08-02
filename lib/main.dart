import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzylite/app.dart';
import 'package:quizzylite/firebase_options.dart';
import 'package:quizzylite/presentation/module.dart';

void main() => runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
        await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
        );
        FlutterError.onError = (details) => errorHandler.send(
              details.exception,
              details.stack,
            );
        runApp(const ProviderScope(child: QuizzLite()));
      },
      errorHandler.send,
    );
