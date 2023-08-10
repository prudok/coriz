// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB8Ar6XuIJoWcY24MADpzcB9K6DUic3R5k',
    appId: '1:588682336605:android:47a97b2267bdbe9b8c30b4',
    messagingSenderId: '588682336605',
    projectId: 'coriz-d770d',
    storageBucket: 'coriz-d770d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDpbxbG2qFOVhUmi5Iys8m9pmPnl6yBcRQ',
    appId: '1:588682336605:ios:a1ef066a3a8afba98c30b4',
    messagingSenderId: '588682336605',
    projectId: 'coriz-d770d',
    storageBucket: 'coriz-d770d.appspot.com',
    iosClientId: '588682336605-0noo40tbpjmpbg4s4f6lkpqnhkre4udi.apps.googleusercontent.com',
    iosBundleId: 'com.onatcipli.networkUpp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDpbxbG2qFOVhUmi5Iys8m9pmPnl6yBcRQ',
    appId: '1:588682336605:ios:06c378dbcb16cd6e8c30b4',
    messagingSenderId: '588682336605',
    projectId: 'coriz-d770d',
    storageBucket: 'coriz-d770d.appspot.com',
    iosClientId: '588682336605-d50fe2k76dnsalc1am3vjrq06dhv3gcm.apps.googleusercontent.com',
    iosBundleId: 'com.onatcipli.coriz.RunnerTests',
  );
}
