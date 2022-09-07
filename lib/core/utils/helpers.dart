import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';

class Helpers {
  static Future<bool> isConnectedInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }

    return false;
  }

  static StreamSubscription<ConnectivityResult> getConnectionListener(
      void Function(ConnectivityResult)? onData) {
    return Connectivity().onConnectivityChanged.listen(onData);
  }
}
