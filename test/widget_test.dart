import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/main.dart';

void main() {
  testWidgets('smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(new MyApp());
    await tester.tap(find.byType(RaisedButton));
    await tester.pump();

    expect(find.text('Not a valid email.'), findsOneWidget);
    expect(find.text('Password too short.'), findsOneWidget);
  });
}
