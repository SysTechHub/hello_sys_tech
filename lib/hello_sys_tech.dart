
import 'hello_sys_tech_platform_interface.dart';

class HelloSysTech {
  Future<String?> getPlatformVersion() {
    return HelloSysTechPlatform.instance.getPlatformVersion();
  }
}
