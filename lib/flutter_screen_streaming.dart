import 'dart:async';

import 'package:flutter/services.dart';

class FlutterScreenStreaming {
  static const MethodChannel _channel = const MethodChannel('flutter_screen_streaming');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
