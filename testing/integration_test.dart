import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testing/main.dart' as app;

void main() {
  // Integration Test အတွက် Binding ကို အရင်လုပ်ပါ
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('End-to-End Test', () {
    testWidgets('App ပွင့်လာပြီး API ကနေ User List တက်လာသည်အထိ စစ်ဆေးခြင်း', (WidgetTester tester) async {
      // ၁။ App ကို စတင် Run ပါ
      app.main();

      // ၂။ UI တွေ အကုန် Render ဖြစ်ပြီး API ခေါ်တာ ပြီးဆုံးသည်အထိ စောင့်ပါ
      await tester.pumpAndSettle();

      // ၃။ UI မှာ "Global Wave Test" ဆိုတဲ့ AppBar Title ပါမပါ စစ်မယ်
      expect(find.text('Global Wave Test'), findsOneWidget);

      // ၄။ အနည်းဆုံး User တစ်ယောက်ရဲ့ ListTile တက်လာမလာ စစ်မယ်
      // API response ကြာနိုင်လို့ pumpAndSettle ကို ထပ်သုံးနိုင်ပါတယ်
      await tester.pumpAndSettle(const Duration(seconds: 2));

      // ListView ထဲမှာ ListTile တွေ ရှိနေရမယ်
      expect(find.byType(ListTile), findsWidgets);
      // expect(find.byType(ElevatedButton), findsWidgets);



      // ၅။ ပထမဆုံး User ကို နှိပ်ကြည့်ခြင်း (စမ်းသပ်ရန်)
      await tester.tap(find.byType(ListTile).first);
      await tester.pumpAndSettle();
    });
  });
}
