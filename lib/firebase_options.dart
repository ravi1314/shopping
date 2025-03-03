// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyA7drUkeEZ7GO7p2wfkNrZuvmmAGWpwJ7c',
    appId: '1:723396341149:web:1d54d513b5c171b46d9374',
    messagingSenderId: '723396341149',
    projectId: 'shoppingapp-db0d5',
    authDomain: 'shoppingapp-db0d5.firebaseapp.com',
    storageBucket: 'shoppingapp-db0d5.firebasestorage.app',
    measurementId: 'G-L0ED97BJ4X',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCZswmS5RmGBwuC8JXCUgHa7IthuY_C_lM',
    appId: '1:723396341149:android:36439b76d64842d66d9374',
    messagingSenderId: '723396341149',
    projectId: 'shoppingapp-db0d5',
    storageBucket: 'shoppingapp-db0d5.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCtrb8A_I1O0wLxQu-3HNoEQTof-3srPjk',
    appId: '1:723396341149:ios:26fca15b04afc5e96d9374',
    messagingSenderId: '723396341149',
    projectId: 'shoppingapp-db0d5',
    storageBucket: 'shoppingapp-db0d5.firebasestorage.app',
    iosBundleId: 'com.example.shopping',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCtrb8A_I1O0wLxQu-3HNoEQTof-3srPjk',
    appId: '1:723396341149:ios:26fca15b04afc5e96d9374',
    messagingSenderId: '723396341149',
    projectId: 'shoppingapp-db0d5',
    storageBucket: 'shoppingapp-db0d5.firebasestorage.app',
    iosBundleId: 'com.example.shopping',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA7drUkeEZ7GO7p2wfkNrZuvmmAGWpwJ7c',
    appId: '1:723396341149:web:9a08e56a681f54666d9374',
    messagingSenderId: '723396341149',
    projectId: 'shoppingapp-db0d5',
    authDomain: 'shoppingapp-db0d5.firebaseapp.com',
    storageBucket: 'shoppingapp-db0d5.firebasestorage.app',
    measurementId: 'G-XP8GXQBH91',
  );
}
