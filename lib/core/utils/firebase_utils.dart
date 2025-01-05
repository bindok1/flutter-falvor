// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:injectable/injectable.dart';
// import 'package:kirai_secure_messanger/firebase_options.dart';
// import 'package:kirai_secure_messanger/shared/constant/fss_const.dart';

// @lazySingleton
// class FirebaseUtility {
//   final FirebaseMessaging _messaging;
//   final FlutterSecureStorage _flutterStorage;

//   FirebaseUtility(this._messaging, this._flutterStorage) {
//     init();
//   }

//   void init() async {
//     await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   }

//   Future<String?> getFCMToken() async {
//     await _messaging.getInitialMessage();

//     try {
//       String? token = await _messaging.getToken();
//       return token;
//     } catch (e) {
//       return null;
//     }
//   }

//   void listenFCMTokenChanges(Function(String) onTokenRefresh) {
//     _messaging.onTokenRefresh.listen(onTokenRefresh);
//   }

//   void binding() async {
//     await _flutterStorage.write(key: FssConst.firebaseToken, value: await getFCMToken());

//     listenFCMTokenChanges((token) async {
//       await _flutterStorage.write(key: FssConst.firebaseToken, value: token);
//     });
//   }

//   Future<String> getCurrentFCMToken() async {
//     return await _flutterStorage.read(key: FssConst.firebaseToken) ?? "";
//   }
// }