// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
library source_gen.tool.build;

import 'package:build_runner/build_runner.dart';

import 'phases.dart';

dynamic main() async {
  await build(phases, deleteFilesByDefault: true);
}
