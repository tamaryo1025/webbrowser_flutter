import 'dart:io';
import 'package:device_info/device_info.dart';

void identificationDevice() async{

  if(Platform.isAndroid) {
 // Android のとき
  print("Andoroidです！！");
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
  print('Running on ${androidInfo.androidId}');
} else if(Platform.isIOS) {
 // iOSのとき
 print("iOSです！！");
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  IosDeviceInfo iosDeviceInfo = await deviceInfo.iosInfo;
  print('Running on ${iosDeviceInfo.identifierForVendor}');  // => iOS UUID 出力
}
}