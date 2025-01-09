import 'package:base_2/core/utils/logger_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class EditorHelpers {
  static Future<void> saveDocument(QuillController controller) async {
    try {
      final delta = controller.document.toDelta();
      final content = {
        'ops': delta.toJson(),
        'metadata': {/* ... */},
      };
      // TODO: Implement save logic
      LoggerUtil.succ('Saving document: $content');
    } catch (e) {
      LoggerUtil.err('Error saving document: $e');
      rethrow;
    }
  }

  static void showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}