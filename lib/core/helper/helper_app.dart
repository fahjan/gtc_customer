import 'dart:async';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class HelperApp {
  static Future<bool> isConnected(
  ) async {
    final bool isConnecteds = await InternetConnectionChecker().hasConnection;
    return isConnecteds;
  }
}
