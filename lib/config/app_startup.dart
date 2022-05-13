import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

import '../shared/di.dart';
import '../shared/utils/screen_util.dart';
import '../shared/utils/storage.dart';
import 'app_config.dart';

final serviceLocator = GetIt.I;

class AppStartUp {
  Future<void> setUp() async {
    await initializedFirebase();
    await registerServices(GetIt.I);
    loadStartUpConfig();
    // await firebasePushNotification();
    var hasNudge = await PhoneScreenUtil.hasNudge();
    GetIt.I.registerSingleton<ScreenUtilService>(
        ScreenUtilService(hasNudge: hasNudge));
  }

  Future<void> registerServices(ioc) async {
    setupSharedServices(ioc);
    // setupAccessoryServices(ioc);
    // setupAddressServices(ioc);
    // setupSOSServices(ioc);
    // setupSearchServices(ioc);
  }

  void loadStartUpConfig() async {
    // clear cached token if the app is a newly installed.
    var isFirstTime =
        await LocalStorageUtils.read(AppConstants.isUserFirstTime);
    if (isFirstTime != "true") {
      await const FlutterSecureStorage().deleteAll();
    }
  }

  Future<void> initializedFirebase() async {
    // final FirebaseApp app = await Firebase.initializeApp();
  }

  // Future<void> firebasePushNotification() async {
  //   FirebaseNotificationManager notificationManager =
  //       FirebaseNotificationManager();
  //   await notificationManager.registerNotification();
  //   try {
  //     var token = await notificationManager.deviceToken;
  //     print("Device Token => $token");
  //   } catch (ex) {}
  // }
}

class ScreenUtilService {
  final bool hasNudge;

  ScreenUtilService({required this.hasNudge});
}
