import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../core/themes.dart';
import '../../../main.dart';

class FileUploadFormField extends StatelessWidget {
  FileUploadFormField({
    super.key,
    required this.title,
    required this.directoryName,
    required this.controller,
  });

  final String title;
  final String directoryName;
  final TextEditingController controller;

  late String? _fileName;

  Future<String?> _pickFile() async {
    FilePickerResult? result =
        await FilePicker.platform.pickFiles(allowMultiple: false);
    if (result != null) {
      _fileName = result.files.single.name;
      controller.text = _fileName!;
      return result.files.first.path!;
    }
    return null;
  }

  Future<void> _uploadFile(String path) async {
    if (_fileName != null) {
      var uploadDescription = await client.fileManagement
          .getUploadDescription("$directoryName/$_fileName");
      final uint8list = await File(path).readAsBytes();
      final byteData = uint8list.buffer.asByteData();

      if (uploadDescription != null) {
        var uploader = FileUploader(uploadDescription);
        await uploader.uploadByteData(byteData);
        final success = await client.fileManagement
            .verifyUpload("$directoryName/$_fileName");
        print(success);
        // TODO add check if unsuccess and needs to be smal info for user
        // TODO check if already in db
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    String path = '';
    return TextFormField(
      controller: controller,
      readOnly: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: Themes().normalTextInputDecoration(title).copyWith(
            suffixIcon: IconButton(
              padding: const EdgeInsets.all(10),
              icon: const Icon(Icons.file_download),
              onPressed: () {
                _pickFile().then((value) => path = value!);
              },
            ),
          ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Загрузите файл';
        }
        return null;
      },
      onTap: () {
        _pickFile().then((value) => path = value!);
      },
      onFieldSubmitted: (value) {
        if (path.isNotEmpty) {
          _uploadFile(path);
        }
      },
    );
  }
}
