import 'package:base_2/features/home/data/models/doc_model.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class DocService {
  Future<Map<String, dynamic>> loadDeltaFromDocument(DocumentModel document) async {
    try {
     
      final String jsonString = await rootBundle.loadString(document.deltaJson);
      final Map<String, dynamic> deltaData = json.decode(jsonString);
      
     
      return {
        'ops': deltaData['ops'],
        'metadata': {
          'title': document.title,
          'author': document.uploadedBy,
          'creator': document.uploadedBy,
          'producer': 'Your App Name',
          'pageCount': document.totalPages,
          'lastModified': document.lastModified.toIso8601String(),
        }
      };
    } catch (e) {
      throw Exception('Failed to load delta: $e');
    }
  }
}