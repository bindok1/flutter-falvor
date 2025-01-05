import 'package:flutter/material.dart';

class LoggerUtil {
  static void d(String message) {
    debugPrint('🔵 DEBUG: $message');
  }

  static void err(String message) {
    debugPrint('🔴 ERROR: $message');
  }

  static void succ(String message) {
    debugPrint('✅ SUCCESS: $message');
  }

  static void warn(String message) {
    debugPrint('⚠️ WARNING: $message');
  }

  static void info(String message) {
    debugPrint('ℹ️ INFO: $message');
  }
}
