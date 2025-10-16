import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sdk_availability/sdk_availability.dart';

void main() {
  const MethodChannel channel = MethodChannel('sdk_availability');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('checkService', () async {
    //expect(await GoogleHuaweiAvailability.isGoogleServiceAvailable, true);
  });
}
