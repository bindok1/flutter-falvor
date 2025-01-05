//setting your firebase options here

// import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
// import 'package:flutter/foundation.dart'
//     show defaultTargetPlatform, kIsWeb, TargetPlatform;

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

// class DefaultFirebaseOptions {
//   static FirebaseOptions get currentPlatform {
//     if (kIsWeb) {
//       return web;
//     }
//     switch (defaultTargetPlatform) {
//       case TargetPlatform.android:
//         return android;
//       case TargetPlatform.iOS:
//         return ios;
//       case TargetPlatform.macOS:
//         return macos;
//       case TargetPlatform.windows:
//         return windows;
//       case TargetPlatform.linux:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions have not been configured for Linux - '
//           'you can configure this by running the FlutterFire CLI.',
//         );
//       default:
//         throw UnsupportedError(
//           'DefaultFirebaseOptions are not supported for this platform.',
//         );
//     }
//   }

//   static const FirebaseOptions web = FirebaseOptions(
//     apiKey: 'dummy-web-api-key',
//     appId: 'dummy-web-app-id',
//     messagingSenderId: 'dummy-web-sender-id',
//     projectId: 'dummy-web-project-id',
//     authDomain: 'dummy-web-auth-domain',
//     storageBucket: 'dummy-web-storage-bucket',
//     measurementId: 'dummy-web-measurement-id',
//   );

//   static const FirebaseOptions android = FirebaseOptions(
//     apiKey: 'dummy-android-api-key',
//     appId: 'dummy-android-app-id',
//     messagingSenderId: 'dummy-android-sender-id',
//     projectId: 'dummy-android-project-id',
//     storageBucket: 'dummy-android-storage-bucket',
//   );

//   static const FirebaseOptions ios = FirebaseOptions(
//     apiKey: 'dummy-ios-api-key',
//     appId: 'dummy-ios-app-id',
//     messagingSenderId: 'dummy-ios-sender-id',
//     projectId: 'dummy-ios-project-id',
//     storageBucket: 'dummy-ios-storage-bucket',
//     iosBundleId: 'com.example.dummyApp',
//   );

//   static const FirebaseOptions macos = FirebaseOptions(
//     apiKey: 'dummy-macos-api-key',
//     appId: 'dummy-macos-app-id',
//     messagingSenderId: 'dummy-macos-sender-id',
//     projectId: 'dummy-macos-project-id',
//     storageBucket: 'dummy-macos-storage-bucket',
//     iosBundleId: 'com.example.dummyApp',
//   );

// ignore_for_file: dangling_library_doc_comments

//   static const FirebaseOptions windows = FirebaseOptions(
//     apiKey: 'dummy-windows-api-key',
//     appId: 'dummy-windows-app-id',
//     messagingSenderId: 'dummy-windows-sender-id',
//     projectId: 'dummy-windows-project-id',
//     authDomain: 'dummy-windows-auth-domain',
//     storageBucket: 'dummy-windows-storage-bucket',
//     measurementId: 'dummy-windows-measurement-id',
//   );
// }
