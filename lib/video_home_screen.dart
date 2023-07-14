import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class VideoHomeScreen extends StatefulWidget {
  const VideoHomeScreen({super.key});

  @override
  State<VideoHomeScreen> createState() => _VideoHomeScreenState();
}

class _VideoHomeScreenState extends State<VideoHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:
          00000, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:
          "", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: '12345623222',
      userName: 'klayyyyy',
      callID: "9491191338",
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
        ..onOnlySelfInRoom = (context) => Navigator.of(context).pop(),
    );
  }
}
