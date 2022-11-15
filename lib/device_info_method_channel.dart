import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'device_info_platform_interface.dart';
import 'locale_info_model.dart';

/// An implementation of [DeviceInfoPlatform] that uses method channels.
class MethodChannelDeviceInfo extends DeviceInfoPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('device_info');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<LocaleInfo?> get localeInfo async {
    final dynamic localeInfoMap =
    await methodChannel.invokeMapMethod('getLocaleInfo');

    final localeInfo = LocaleInfo.fromMap(localeInfoMap);
    return(localeInfo);
  }
}
