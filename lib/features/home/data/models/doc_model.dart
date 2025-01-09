enum DocType {
  pdf,
  doc,
  docx,
  txt,
}

class DocumentModel {
  final int id;
  final String title;
  final String fileName;
  final String filePath;
  final String fileType;
  final int fileSize;
  final String uploadedBy;
  final DateTime uploadedAt;
  final String description;
  final int totalPages;
  final String status;
  final List<String> tags;
  final int downloadCount;
  final String category;
  final DateTime lastModified;
  final bool isPublic;
  final String thumbnailPath;
  final String deltaJson;

  DocumentModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        fileName = json['fileName'],
        filePath = json['filePath'],
        fileType = json['fileType'],
        fileSize = json['fileSize'],
        uploadedBy = json['uploadedBy'],
        uploadedAt = DateTime.parse(json['uploadedAt']),
        description = json['description'],
        totalPages = json['totalPages'],
        status = json['status'],
        tags = List<String>.from(json['tags']),
        downloadCount = json['downloadCount'],
        category = json['category'],
        lastModified = DateTime.parse(json['lastModified']),
        isPublic = json['isPublic'],
        thumbnailPath = json['thumbnailPath'],
        deltaJson = json['deltaJson'];
}
