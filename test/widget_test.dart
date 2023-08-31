// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:radiation_sample_with_getx/src/repository/radiation_repository.dart';

void main() {
  test('radiation data Check', () async {
    var repository = RadiationRepository();
    for (var i = 0; i < 3; i++) {
      var result = await repository.getTotalStatistics(useRandomNull: true);
      print(result);
    }
    for (var i = 0; i < 5; i++) {
      var result =
          await repository.getSafetyStatePerLocation(useRandomNull: true);
      print(result);
    }
  });
}
