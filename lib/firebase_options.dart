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
    apiKey: 'AIzaSyAZeB4qXqPAVMwuvxE2XW8CU1_FQzrYcLE',
    appId: '1:382216459384:web:c87c9166ab92da4506898d',
    messagingSenderId: '382216459384',
    projectId: 'chat-app-e3caa',
    authDomain: 'chat-app-e3caa.firebaseapp.com',
    storageBucket: 'chat-app-e3caa.firebasestorage.app',
    measurementId: 'G-8LS1TSZNL1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPbBuE4-3CWaFtdZYDqg22-YYtHCNM4x8',
    appId: '1:382216459384:android:dd560cf2436e2e2206898d',
    messagingSenderId: '382216459384',
    projectId: 'chat-app-e3caa',
    storageBucket: 'chat-app-e3caa.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-pzbeqynr-amI9nkQA9-GCskPXmx6bu0',
    appId: '1:382216459384:ios:f3fa6467ca6caf9f06898d',
    messagingSenderId: '382216459384',
    projectId: 'chat-app-e3caa',
    storageBucket: 'chat-app-e3caa.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD-pzbeqynr-amI9nkQA9-GCskPXmx6bu0',
    appId: '1:382216459384:ios:f3fa6467ca6caf9f06898d',
    messagingSenderId: '382216459384',
    projectId: 'chat-app-e3caa',
    storageBucket: 'chat-app-e3caa.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAZeB4qXqPAVMwuvxE2XW8CU1_FQzrYcLE',
    appId: '1:382216459384:web:d18588da6973083b06898d',
    messagingSenderId: '382216459384',
    projectId: 'chat-app-e3caa',
    authDomain: 'chat-app-e3caa.firebaseapp.com',
    storageBucket: 'chat-app-e3caa.firebasestorage.app',
    measurementId: 'G-LSQ85YTYY0',
  );
}
