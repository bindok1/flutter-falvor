
import 'package:base_2/core/utils/logger_util.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> isConnected();
  Future<bool> hasInternetConnection();
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker internetChecker;

  NetworkInfoImpl(this.internetChecker);

  @override
  Future<bool> isConnected() async {
    try {
      return await internetChecker.hasConnection;
    } catch (e) {
      LoggerUtil.err('Error checking connection: $e');
      return false;
    }
  }

  @override
  Future<bool> hasInternetConnection() async {
    try {
      return await internetChecker.hasConnection;
    } catch (e) {
      LoggerUtil.err('Error checking internet connection: $e');
      return false;
    }
  }
}
