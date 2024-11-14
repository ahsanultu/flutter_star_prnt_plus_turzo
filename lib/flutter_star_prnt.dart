import 'flutter_star_prnt_platform_interface.dart';

export './src/enums.dart';
export './src/port_info.dart';
export './src/print_commands.dart';
export './src/printer_response_status.dart';
export './src/star_prnt.dart';
export './src/utilities.dart';

class FlutterStarPrnt {
  Future<String?> getPlatformVersion() {
    return FlutterStarPrntPlatform.instance.getPlatformVersion();
  }
}
