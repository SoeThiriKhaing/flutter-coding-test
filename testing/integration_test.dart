import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('Full App Flow Test', (tester) async {
    app.main();

    // ၁။ Splash Screen ပြီးအောင် စောင့်မယ်
    await tester.pumpAndSettle();
    await Future.delayed(const Duration(seconds: 3));
    await tester.pumpAndSettle();

    final skipBtn = find.byKey(const Key('skip_button'));
    if (tester.any(skipBtn)) {
      await tester.tap(skipBtn);
      await tester.pumpAndSettle();
    }

    final signInBtnOnOnboarding = find.text('Sign In');
    if (tester.any(signInBtnOnOnboarding)) {
      await tester.tap(signInBtnOnOnboarding);
      await tester.pumpAndSettle();
    }

    bool loginFound = false;
    for (int i = 0; i < 5; i++) {
      await tester.pump(const Duration(seconds: 1));
      if (tester.any(find.byKey(const Key('username_field')))) {
        loginFound = true;
        break;
      }
    }

    if (!loginFound) {
      fail("Login Screen ကို မရောက်နိုင်သေးပါဘူး။");
    }

    await tester.enterText(find.byKey(const Key('username_field')), 'admin');
    await tester.enterText(find.byKey(const Key('password_field')), '123456');
    await tester.pumpAndSettle();

    await tester.tap(find.byType(ElevatedButton));
    await tester.pumpAndSettle(const Duration(seconds: 2));

    expect(find.byIcon(Icons.person), findsWidgets);  });
}