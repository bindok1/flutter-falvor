import 'package:base_2/features/sign_in/data/model/sign_in_model.dart';
import 'package:base_2/shared/assets/app_asset.dart';

class DummyData {
  static final List<Map<String, dynamic>> documents = [
    {
      "id": 1,
      "title": "Panduan Penggunaan Aplikasi",
      "fileName": "sample-2.pdf",
      "filePath": AppAsset.pdfDummy,
      "fileType": "pdf",
      "fileSize": 2048576,
      "uploadedBy": "John Doe",
      "uploadedAt": "2024-03-15T09:30:00Z",
      "description": "Dokumen panduan penggunaan aplikasi untuk pengguna baru",
      "totalPages": 24,
      "status": "published",
      "tags": ["panduan", "user guide", "dokumentasi"],
      "downloadCount": 150,
      "category": "Panduan",
      "lastModified": "2024-03-15T09:30:00Z",
      "isPublic": true,
      "thumbnailPath": AppAsset.pdfImg,
      "deltaJson": AppAsset.deltaJson,
    },
    {
      "id": 2,
      "title": "Laporan Keuangan Q1 2024",
      "fileName": "demo.docx",
      "filePath": AppAsset.docxDummy,
      "fileType": "docx",
      "fileSize": 1048576, 
      "uploadedBy": "Jane Smith",
      "uploadedAt": "2024-03-10T14:20:00Z",
      "description": "Laporan keuangan kuartal pertama tahun 2024",
      "totalPages": 15,
      "status": "draft",
      "tags": ["keuangan", "laporan", "q1"],
      "downloadCount": 45,
      "category": "Laporan",
      "lastModified": "2024-03-10T14:20:00Z",
      "isPublic": false,
      "thumbnailPath": AppAsset.docxImg,
      "deltaJson": AppAsset.deltaJson,
    },
    {
      "id": 3,
      "title": "SOP Departemen IT",
      "fileName": "sample-2.pdf",
      "filePath": AppAsset.pdfDummy,
      "fileType": "pdf",
      "fileSize": 3145728,
      "uploadedBy": "Admin",
      "uploadedAt": "2024-02-28T11:00:00Z",
      "description": "Standard Operating Procedure untuk Departemen IT",
      "totalPages": 32,
      "status": "published",
      "tags": ["sop", "it", "prosedur"],
      "downloadCount": 89,
      "category": "SOP",
      "lastModified": "2024-02-28T11:00:00Z",
      "isPublic": true,
      "thumbnailPath": AppAsset.pdfImg,
      "deltaJson": AppAsset.deltaJson,
    },
    {
      "id": 4,
      "title": "Template Surat Dinas",
      "fileName": "demo.docx",
      "filePath": AppAsset.docxDummy,
      "fileType": "docx",
      "fileSize": 512000, 
      "uploadedBy": "Manager",
      "uploadedAt": "2024-02-25T08:15:00Z",
      "description": "Template untuk pembuatan surat dinas resmi",
      "totalPages": 5,
      "status": "published",
      "tags": ["template", "surat", "dinas"],
      "downloadCount": 234,
      "category": "Template",
      "lastModified": "2024-02-25T08:15:00Z",
      "isPublic": true,
      "thumbnailPath": AppAsset.docxImg,
      "deltaJson": AppAsset.deltaJson,
    }
  ];

  static final Map<String, dynamic> adminJson = {
    "user_id": 1001,
    "username": "admin_user",
    "email": "admin@company.com",
    "role": {"name": "admin", "level": 3},
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
    "expires_at": "2024-12-31T23:59:59Z",
    "message": "Login berhasil"
  };

  static final Map<String, dynamic> managerJson = {
    "user_id": 2001,
    "username": "manager_user",
    "email": "manager@company.com",
    "role": {"name": "manager", "level": 2},
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
    "expires_at": "2024-12-31T23:59:59Z",
    "message": "Login berhasil"
  };

  static final Map<String, dynamic> userJson = {
    "user_id": 3001,
    "username": "normal_user",
    "email": "user@company.com",
    "role": {"name": "user", "level": 1},
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
    "expires_at": "2024-12-31T23:59:59Z",
    "message": "Login berhasil"
  };

  // Convert ke UserModel
  static UserModel adminUser = UserModel.fromJson(adminJson);
  static UserModel managerUser = UserModel.fromJson(managerJson);
  static UserModel userUser = UserModel.fromJson(userJson);
}
