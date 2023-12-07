// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';


bool checkLicensePlate(String input) {
  // Pola umum untuk plat nomor Indonesia
  RegExp regex = RegExp(r'^[A-Z]{1,3}\s?\d{1,4}\s?[A-Z]{0,2}$');
  return regex.hasMatch(input);
}

List<String> spitLicensePlate(String input) {
  RegExp regex = RegExp(r'^([A-Za-z]{1,2})(\d+)([A-Za-z]{1,3})$');
  Match? match = regex.firstMatch(input);

  if (match != null) {
    // match.group(1) akan berisi 1 atau 2 karakter pertama
    // match.group(2) akan berisi angka di tengah
    // match.group(3) akan berisi 1 sampai 3 karakter terakhir
    return [match.group(1)!, match.group(2)!, match.group(3)!];
  } else {
    // Handle jika tidak ada kecocokan
    return [];
  }
}

void isLicensePLate(String arg) {
  RegExp regex = RegExp(r"^[A-Z]{1,2}\s?\d{1,4}\s?[A-Z]{0,3}$");
  // Match? match = regex.firstMatch(arg);
  // logKey('isLicense',);
  
  print('has match ${regex.hasMatch(arg)}');
  // if (match.has) {
    
  // }
}

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    // await tester.pumpWidget(const MyApp());
    const string = 'B1234AB';
    const string2 = 'BH1234ABA';
    const string3 = 'BHZ1234ABA';
    isLicensePLate(string);
    isLicensePLate(string2);
    isLicensePLate(string3);
    final res = checkLicensePlate(string);
    final res2 = checkLicensePlate(string2);
    final a = spitLicensePlate(string);
    print(a);

    print(res);
    print(res2);
    // Verify that our counter starts at 0.
    // expect(find.text('0'), findsOneWidget);
    // expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    // await tester.tap(find.byIcon(Icons.add));
    // await tester.pump();

    // Verify that our counter has incremented.
    // expect(find.text('0'), findsNothing);
    // expect(find.text('1'), findsOneWidget);
  });
}
