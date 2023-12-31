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
    apiKey: 'AIzaSyBzx7zYEp4ntXL3ws6L-JKYOoiaicRHAcg',
    appId: '1:181293657554:web:c9257c94d69472e77cac0b',
    messagingSenderId: '181293657554',
    projectId: 're7latek',
    authDomain: 're7latek.firebaseapp.com',
    storageBucket: 're7latek.appspot.com',
    measurementId: 'G-N8LJK626V6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJ0K1nKu7FSUz1VpAlrlaaXbjo0ufAnpM',
    appId: '1:181293657554:android:370d07b6f1811c5e7cac0b',
    messagingSenderId: '181293657554',
    projectId: 're7latek',
    storageBucket: 're7latek.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyANKMDDxK0klilqKTjKIVnKTV-Q4FfruGY',
    appId: '1:181293657554:ios:078152d551b1e41f7cac0b',
    messagingSenderId: '181293657554',
    projectId: 're7latek',
    storageBucket: 're7latek.appspot.com',
    iosBundleId: 'com.example.re7latekk',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyANKMDDxK0klilqKTjKIVnKTV-Q4FfruGY',
    appId: '1:181293657554:ios:789357568c6cf11c7cac0b',
    messagingSenderId: '181293657554',
    projectId: 're7latek',
    storageBucket: 're7latek.appspot.com',
    iosBundleId: 'com.example.re7latekk.RunnerTests',
  );
}
