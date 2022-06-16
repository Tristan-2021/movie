// ignore_for_file: prefer_const_constructors
import 'package:model/model.dart';
import 'package:test/test.dart';

void main() {
  group('Model', () {
    test('can be instantiated', () {
      expect(ModelMoviTV(name: ''), isNotNull);
    });
  });
}
