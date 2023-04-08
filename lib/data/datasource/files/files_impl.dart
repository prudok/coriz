import 'dart:io';

import 'package:path_provider/path_provider.dart';

import 'files.dart';

class FilesImpl extends Files {
  @override
  Future<void> delete(String path) {
    throw UnimplementedError();
  }

  @override
  Future<String?> read(String path) async {
    try {
      final file = await _localFile;
      final contents = await file.readAsString();
      return (contents);
    } catch (error) {
      return null;
    }
  }

  @override
  Future<File> write(String content) async {
    final file = await _localFile;
    return await file.writeAsString(content);
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/quizzes.json');
  }
}
