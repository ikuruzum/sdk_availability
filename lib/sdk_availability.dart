import 'dart:async';

import 'package:flutter/services.dart';

class GoogleHuaweiAvailability {
  /// Initialize the method channel
  static const MethodChannel _channel = MethodChannel('sdk_availability');

  /// Method Channel to check Google Service
  static Future<bool?> get isGoogleServiceAvailable async {
    final bool? service =
        await _channel.invokeMethod('isGoogleServiceAvailable');
    return service;
  }

  /// Method Channel to check Huawei HMS Service
  static Future<bool?> get isHuaweiServiceAvailable async {
    final bool? service =
        await _channel.invokeMethod('isHuaweiServiceAvailable');
    return service;
  }
}
