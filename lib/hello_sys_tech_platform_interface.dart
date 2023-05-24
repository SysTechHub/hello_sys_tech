import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'hello_sys_tech_method_channel.dart';

abstract class HelloSysTechPlatform extends PlatformInterface {
  /// Constructs a HelloSysTechPlatform.
  HelloSysTechPlatform() : super(token: _token);

  static final Object _token = Object();

  static HelloSysTechPlatform _instance = MethodChannelHelloSysTech();

  /// The default instance of [HelloSysTechPlatform] to use.
  ///
  /// Defaults to [MethodChannelHelloSysTech].
  static HelloSysTechPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [HelloSysTechPlatform] when
  /// they register themselves.
  static set instance(HelloSysTechPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
