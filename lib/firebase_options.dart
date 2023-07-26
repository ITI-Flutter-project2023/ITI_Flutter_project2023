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
    apiKey: 'AIzaSyAMyQFwowX2xDVkAIVKmbVc1n41tuePiSw',
    appId: '1:550498776624:web:637e3f356416e5fd67dff5',
    messagingSenderId: '550498776624',
    projectId: 'iti-flutter-project2023',
    authDomain: 'iti-flutter-project2023.firebaseapp.com',
    storageBucket: 'iti-flutter-project2023.appspot.com',
    measurementId: 'G-ELE9DX661Y',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBKeYx0wB9hy2dMsziz5BsHpWP0_Zhh_3g',
    appId: '1:550498776624:android:d9c1f7a8773779b667dff5',
    messagingSenderId: '550498776624',
    projectId: 'iti-flutter-project2023',
    storageBucket: 'iti-flutter-project2023.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBez6w7Z-yfJyams7Um-6fxt19jhRf_jIY',
    appId: '1:550498776624:ios:e24c4a1d664bb77567dff5',
    messagingSenderId: '550498776624',
    projectId: 'iti-flutter-project2023',
    storageBucket: 'iti-flutter-project2023.appspot.com',
    iosClientId: '550498776624-3g35pnltq9vt48tkilrlu043oeh0o7mp.apps.googleusercontent.com',
    iosBundleId: 'com.example.itiFlutterProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBez6w7Z-yfJyams7Um-6fxt19jhRf_jIY',
    appId: '1:550498776624:ios:d7216acbd482470c67dff5',
    messagingSenderId: '550498776624',
    projectId: 'iti-flutter-project2023',
    storageBucket: 'iti-flutter-project2023.appspot.com',
    iosClientId: '550498776624-m36gvcrgfumehgl9l71com95baokb63b.apps.googleusercontent.com',
    iosBundleId: 'com.example.itiFlutterProject.RunnerTests',
  );
}
