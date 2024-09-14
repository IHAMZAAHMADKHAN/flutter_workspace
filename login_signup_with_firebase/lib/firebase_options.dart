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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDhsby-19Pgfa36SIU2CnUTkLbivEL-lbU',
    appId: '1:622854657867:web:0623c606db21999cdcface',
    messagingSenderId: '622854657867',
    projectId: 'flutter-firebase-7701c',
    authDomain: 'flutter-firebase-7701c.firebaseapp.com',
    storageBucket: 'flutter-firebase-7701c.appspot.com',
    measurementId: 'G-ZV6321GWWT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB86RLFwHc58x9vfCPDtGy0-uAO_VKGM-U',
    appId: '1:622854657867:android:4a3deef7fc51046adcface',
    messagingSenderId: '622854657867',
    projectId: 'flutter-firebase-7701c',
    storageBucket: 'flutter-firebase-7701c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDoo7nV28EGFaTzU_MTlIIVnZYua18eQs0',
    appId: '1:622854657867:ios:30bc5f73bf46477cdcface',
    messagingSenderId: '622854657867',
    projectId: 'flutter-firebase-7701c',
    storageBucket: 'flutter-firebase-7701c.appspot.com',
    iosBundleId: 'com.example.loginSignupWithFirebase',
  );

}