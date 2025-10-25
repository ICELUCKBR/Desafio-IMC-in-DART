// ignore_for_file: unused_import

import 'package:desafioimc/models/pessoa.dart';
import 'package:desafioimc/models/console_utils.dart';
import 'package:test/test.dart';
import 'package:desafioimc/desafioimc.dart/' as app;

void main() {
  test(
      'FirstPLace',
      () => () {
            expect(console_utils.adquirirDouble(), 10.0);
          });
}
