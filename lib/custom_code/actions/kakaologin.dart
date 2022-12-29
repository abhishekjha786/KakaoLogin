// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';

import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

Future<bool> kakaologin() async {
  try {
    bool isInstalled = await isKakaoTalkInstalled();
    if (isInstalled) {
      try {
        await UserApi.instance.loginWithKakaoTalk();
        return true;
      } catch (e) {
        return false;
      }
    } else {
      try {
        await UserApi.instance.loginWithKakaoAccount();
        return true;
      } catch (e) {
        return false;
      }
    }
  } catch (e) {
    return false;
  }
}
