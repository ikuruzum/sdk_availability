# Google and Huawei Service Availability
![Pub Version](https://img.shields.io/pub/v/sdk_availability)


 A Flutter plugin to detect the availability of the Google Play Services and Huawei HMS Services API on Android devices. 
 It can also be used to check the device is a Huawei device or not.

### Installing

To use this package, add `sdk_availability` as a dependency in your `pubspec.yaml` file.

### Usage

```dart

import 'package:sdk_availability/sdk_availability.dart';

TO CHECK DEVICE OTHER THAN HUAWEI
bool isGoogle = await GoogleHuaweiAvailability.isGoogleServiceAvailable;

TO CHECK IS HUAWEI DEVICE
bool isHuawei = await GoogleHuaweiAvailability.isHuaweiServiceAvailable;

```
