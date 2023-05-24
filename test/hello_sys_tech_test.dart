import 'package:flutter_test/flutter_test.dart';
import 'package:hello_sys_tech/hello_sys_tech.dart';
import 'package:hello_sys_tech/hello_sys_tech_platform_interface.dart';
import 'package:hello_sys_tech/hello_sys_tech_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockHelloSysTechPlatform
    with MockPlatformInterfaceMixin
    implements HelloSysTechPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final HelloSysTechPlatform initialPlatform = HelloSysTechPlatform.instance;

  test('$MethodChannelHelloSysTech is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelHelloSysTech>());
  });

  test('getPlatformVersion', () async {
    HelloSysTech helloSysTechPlugin = HelloSysTech();
    MockHelloSysTechPlatform fakePlatform = MockHelloSysTechPlatform();
    HelloSysTechPlatform.instance = fakePlatform;

    expect(await helloSysTechPlugin.getPlatformVersion(), '42');
  });
}
