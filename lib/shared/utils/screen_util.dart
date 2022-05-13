import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class PhoneScreenUtil {
  static const List<String> _IOS_MACHINES_WITH_BOTTOM_NOTCH = [
    'iPhone10,3',
    'iPhone10,6',
    'iPhone11,2',
    'iPhone11,4',
    'iPhone11,6',
    'iPhone11,8',
    'iPhone12,1',
    'iPhone12,3',
    'iPhone12,5',
  ];
  static Future<bool> hasNudge() async {
    if (Platform.isAndroid) return false;
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    final IosDeviceInfo iosDeviceInfo = await deviceInfoPlugin.iosInfo;
    final machineName = iosDeviceInfo.utsname.machine;
    final bool bottomNotch =
        _IOS_MACHINES_WITH_BOTTOM_NOTCH.contains(machineName);
    return bottomNotch;
  }
}
