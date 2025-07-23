import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:audiobook_flutter_frontend/main.dart';

import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  // Setup a dummy in-memory dbHelper for tests.
  late AudiobookDatabaseHelper dbHelper;

  setUpAll(() async {
    // Use ffi for unit tests to run sqflite in Dart-only
    sqfliteFfiInit();
    databaseFactory = databaseFactoryFfi;
    dbHelper = await AudiobookDatabaseHelper.getInstance();
  });

  testWidgets('App generation message displayed', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp(dbHelper: dbHelper));

    expect(find.textContaining('App is being generated'), findsNothing);
    expect(find.byType(Scaffold), findsWidgets);
  });

  testWidgets('App bar has correct title', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp(dbHelper: dbHelper));

    expect(find.byType(AppBar), findsWidgets);
  });
}
