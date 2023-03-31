import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'files.dart';
import 'filesImpl.dart';

final filesProvider = Provider<Files>((ref) => FilesImpl());
