import 'package:firebase_crashlytics/firebase_crashlytics.dart';

/// ErrorHandler is used to send all error to crashlytics
class ErrorHandler {
  factory ErrorHandler() => _singleton;
  ErrorHandler._();
  static final ErrorHandler _singleton = ErrorHandler._();
  void send(Object error, StackTrace? stackTrace) {
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
  }
}
