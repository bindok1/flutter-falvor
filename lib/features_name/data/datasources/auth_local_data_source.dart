   import 'package:shared_preferences/shared_preferences.dart';

   class AuthLocalDataSource {
     final SharedPreferences sharedPreferences;

     AuthLocalDataSource({required this.sharedPreferences});

     Future<void> cacheUserData(String userData) async {
       await sharedPreferences.setString('CACHED_USER_DATA', userData);
     }

     Future<String?> getCachedUserData() async {
       return sharedPreferences.getString('CACHED_USER_DATA');
     }
   }