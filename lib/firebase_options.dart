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
    apiKey: 'AIzaSyD0w4MqzgFPMKc_rlQTHrdxDD337jvRSDc',
    appId: '1:1019927254502:web:299acf4eca638aa7acf227',
    messagingSenderId: '1019927254502',
    projectId: 'financier-33e55',
    authDomain: 'financier-33e55.firebaseapp.com',
    storageBucket: 'financier-33e55.appspot.com',
    measurementId: 'G-M53GFYGPZY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCv4JpKXsFb59bSohJrgkgfp753qx_14bI',
    appId: '1:1019927254502:android:d2ac707491be217eacf227',
    messagingSenderId: '1019927254502',
    projectId: 'financier-33e55',
    storageBucket: 'financier-33e55.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCA2aeWH0ziTp50728hsR2C2H0_gtXi_uc',
    appId: '1:1019927254502:ios:03d83296889bf73facf227',
    messagingSenderId: '1019927254502',
    projectId: 'financier-33e55',
    storageBucket: 'financier-33e55.appspot.com',
    iosClientId: '1019927254502-tgnjc1biii49enpjcb3g48l4u6u8scds.apps.googleusercontent.com',
    iosBundleId: 'com.example.financier',
  );

}