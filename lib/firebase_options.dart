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
    apiKey: 'AIzaSyCZSwpPjJjfzXDMs7DgxE0SuKZ-Im-KmOA',
    appId: '1:301311364531:web:38f6594918c62e36f00fc6',
    messagingSenderId: '301311364531',
    projectId: 'woodbanc-abaaf',
    authDomain: 'woodbanc-abaaf.firebaseapp.com',
    databaseURL: 'https://woodbanc-abaaf-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'woodbanc-abaaf.appspot.com',
    measurementId: 'G-V7GH1SP3ZL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5A0dQzROBz7UgVEGUJq4ElGZyTJ9hUbg',
    appId: '1:301311364531:android:e22a06c24bf5779ef00fc6',
    messagingSenderId: '301311364531',
    projectId: 'woodbanc-abaaf',
    databaseURL: 'https://woodbanc-abaaf-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'woodbanc-abaaf.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBHh0pSb5CiDFg5ZwwHoehpSilv6aTI12o',
    appId: '1:301311364531:ios:de84fd427cf147cbf00fc6',
    messagingSenderId: '301311364531',
    projectId: 'woodbanc-abaaf',
    databaseURL: 'https://woodbanc-abaaf-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'woodbanc-abaaf.appspot.com',
    androidClientId: '301311364531-6kqfkpkucm6m0i96vq4t6hjkuvi49can.apps.googleusercontent.com',
    iosClientId: '301311364531-7prro527f4ivcj8c81vegaa8n90gdlac.apps.googleusercontent.com',
    iosBundleId: 'com.example.splash',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBHh0pSb5CiDFg5ZwwHoehpSilv6aTI12o',
    appId: '1:301311364531:ios:de84fd427cf147cbf00fc6',
    messagingSenderId: '301311364531',
    projectId: 'woodbanc-abaaf',
    databaseURL: 'https://woodbanc-abaaf-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'woodbanc-abaaf.appspot.com',
    androidClientId: '301311364531-6kqfkpkucm6m0i96vq4t6hjkuvi49can.apps.googleusercontent.com',
    iosClientId: '301311364531-7prro527f4ivcj8c81vegaa8n90gdlac.apps.googleusercontent.com',
    iosBundleId: 'com.example.splash',
  );
}
