import 'package:connectivity_plus/connectivity_plus.dart';

class Helpers {
  static Future<bool> isConnectedInternet() async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.wifi) {
      return true;
    }

    return false;
  }
}
