import 'dart:typed_data';

import 'package:serverpod/serverpod.dart';

class FileManagementEndpoint extends Endpoint {
  Future<String?> getUploadDescription(Session session, String path) async {
    return await session.storage.createDirectFileUploadDescription(
      storageId: 'public',
      path: path,
    );
  }

  Future<bool> verifyUpload(Session session, String path) async {
    return await session.storage.verifyDirectFileUpload(
      storageId: 'public',
      path: path,
    );
  }

  Future<void> deleteFile(Session session, String path) async {
    return await session.storage.deleteFile(
      storageId: 'public',
      path: path,
    );
  }

  Future<bool> checkIfFileExists(Session session, String path) async {
    var exists = await session.storage.fileExists(
      storageId: 'public',
      path: path,
    );
    return exists;
  }

  Future<ByteData?> getFileUrl(Session session, String path) async {
    return await session.storage.retrieveFile(
      storageId: 'public',
      path: path,
    );
  }
}
