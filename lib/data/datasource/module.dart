import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'files/filesImpl.dart';
import 'files/files.dart';

final filesProvider = Provider<Files>((ref) {
  return FilesImpl();
});
