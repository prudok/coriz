import 'dart:io';

abstract class Files {
  Future<String?> read(String path);
  Future<File> write(String content);
  Future<void> delete(String path);
}
