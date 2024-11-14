import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_star_prnt/flutter_star_prnt.dart';
import 'package:flutter_star_prnt/flutter_star_prnt_platform_interface.dart';
import 'package:flutter_star_prnt/flutter_star_prnt_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterStarPrntPlatform
    with MockPlatformInterfaceMixin
    implements FlutterStarPrntPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterStarPrntPlatform initialPlatform = FlutterStarPrntPlatform.instance;

  test('$MethodChannelFlutterStarPrnt is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterStarPrnt>());
  });

  test('getPlatformVersion', () async {
    FlutterStarPrnt flutterStarPrntPlugin = FlutterStarPrnt();
    MockFlutterStarPrntPlatform fakePlatform = MockFlutterStarPrntPlatform();
    FlutterStarPrntPlatform.instance = fakePlatform;

    expect(await flutterStarPrntPlugin.getPlatformVersion(), '42');
  });
}
