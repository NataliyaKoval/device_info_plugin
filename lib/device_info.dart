
import 'device_info_platform_interface.dart';
import 'locale_info_model.dart';

class DeviceInfo {
  Future<String?> getPlatformVersion() {
    return DeviceInfoPlatform.instance.getPlatformVersion();
  }

  Future<LocaleInfo?> get localeInfo {
    return DeviceInfoPlatform.instance.localeInfo;
  }
}
