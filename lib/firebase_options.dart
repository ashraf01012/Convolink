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
    apiKey: 'AIzaSyD3NB8mjdaV2eZVdXkK38G0h6th1OE7g5o',
    appId: '1:187871858870:web:1e83f199abf91065e6d617',
    messagingSenderId: '187871858870',
    projectId: 'chattapp-a8936',
    authDomain: 'chattapp-a8936.firebaseapp.com',
    storageBucket: 'chattapp-a8936.appspot.com',
    measurementId: 'G-YPGE5955P3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB3g4HpOrZ5tuexGx_HVoH4fIA__KW11s0',
    appId: '1:187871858870:android:452edfa4dde70d3de6d617',
    messagingSenderId: '187871858870',
    projectId: 'chattapp-a8936',
    storageBucket: 'chattapp-a8936.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCH2n3vUobxUQhdsyAeY4_e29cVhPgBV5w',
    appId: '1:187871858870:ios:016ae181034f5ffae6d617',
    messagingSenderId: '187871858870',
    projectId: 'chattapp-a8936',
    storageBucket: 'chattapp-a8936.appspot.com',
    iosBundleId: 'com.example.untitled',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCH2n3vUobxUQhdsyAeY4_e29cVhPgBV5w',
    appId: '1:187871858870:ios:016ae181034f5ffae6d617',
    messagingSenderId: '187871858870',
    projectId: 'chattapp-a8936',
    storageBucket: 'chattapp-a8936.appspot.com',
    iosBundleId: 'com.example.untitled',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyD3NB8mjdaV2eZVdXkK38G0h6th1OE7g5o',
    appId: '1:187871858870:web:ec2b582b3ab530c6e6d617',
    messagingSenderId: '187871858870',
    projectId: 'chattapp-a8936',
    authDomain: 'chattapp-a8936.firebaseapp.com',
    storageBucket: 'chattapp-a8936.appspot.com',
    measurementId: 'G-70YZMP5P4C',
  );

}