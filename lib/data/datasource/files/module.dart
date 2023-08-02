import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizzylite/data/datasource/files/files.dart';
import 'package:quizzylite/data/datasource/files/files_impl.dart';

final filesProvider = Provider<Files>((ref) => FilesImpl());
