import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'hello_sys_tech_platform_interface.dart';

/// An implementation of [HelloSysTechPlatform] that uses method channels.
class MethodChannelHelloSysTech extends HelloSysTechPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('hello_sys_tech');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
