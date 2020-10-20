import 'package:flutter_test/flutter_test.dart';

import 'package:string_trimmer/string_trimmer.dart';

void main() {
  String str = "Flutter is very cool";
  test('test simple trimming to length with no ellipsis', () {
    expect(trim(str, 7), "Flutter");
  });
  test('test trimming to length with last chars and ASCII ellipsis', () {
    expect(trim(str, 14, lastChars: 4), "Flutter...cool");
  });
  test('test trimming to length with last chars and Unicode ellipsis', () {
    expect(
        trim(str, 14, lastChars: 4, useUnicodeEllipsis: true), "Flutter…cool");
  });
  test('test trimming to length with 0 last chars', () {
    expect(
        trim(str, 10, lastChars: 0, useUnicodeEllipsis: false), "Flutter...");
  });
}
