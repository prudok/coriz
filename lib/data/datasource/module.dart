import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'files/files_impl.dart';
import 'files/files.dart';

final filesProvider = Provider<Files>((ref) {
  return FilesImpl();
});
