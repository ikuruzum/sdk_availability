# Google and Huawei Service Availability

> **Note: Fork Notice**  
> This is a community-maintained fork of the original project. The original repository has not received any updates in over 3 years (last update: 2022). This fork has been created to continue maintenance, fix bugs, and add new features to ensure compatibility with the latest Flutter and platform versions. All contributions and issues are welcome!

A Flutter plugin to detect the availability of the Google Play Services and Huawei HMS Services API on Android devices. 
It can also be used to check if the device is a Huawei device or not.

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
