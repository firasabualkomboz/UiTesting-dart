
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:UiTestingPage/main.dart';

void main() {

     group('Home Screen Test', () {
        FlutterDriver driver;
        setUpAll(() async {
            // Connects to the app
            driver = await FlutterDriver.connect();
        });
        tearDownAll(() async {
            if (driver != null) {
                // Closes the connection
                driver.close();
            }
        });
        test('verify the text on home screen', () async {
            SerializableFinder message = find.text("You have pushed the button this many times:");
            await driver.waitFor(message);
            expect(await driver.getText(message), "You have pushed the button this many times:");
        });
    });
    
  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(MyApp());

  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);

  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();

  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });
}
