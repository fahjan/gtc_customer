import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio/src/response.dart' as dioResponse;
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import '../../../../../core/constants/strings_app.dart';
import '../../../../../core/exceptions/custom_exceptions.dart';
import '../../../../../core/storages/remote_storage/remote_connection_dio.dart';
import 'request_order_remote_abstract.dart';
import '../../model/base_model/base_model.dart';
import '../../model/base_model/data_model.dart';

class RequestOrderRemoteDio extends RequestOrderRemoteAbstract {
  final RemoteConnectionDio _remote;
  RequestOrderRemoteDio(this._remote);

  @override
  Future<List<DataModel>> getListOfData() async {
    dioResponse.Response<dynamic> response =
        await _remote.dio.get(StringsApp.marchatsPath);

    if (response.statusCode != 200) {
      throw ServerNotAvaiableException();
    }

    return BaseModel.fromJson(response.data).data;
  }

  @override
  Future<Unit> makeOrder() async {
    OSDeviceState? deviceState = await OneSignal.shared.getDeviceState();

    debugPrint(deviceState?.pushToken);

    FormData formData = FormData.fromMap({
        'merchant_id': 1,
        'service_id': 1,
        'location_id': 251,
        'delivery_at': 'ASAP',
        'rider_tip': 0,
        'price': 35,
        'payment_type': 'card',
        'onesignal_token':
            "338_NoxicATNzZ2KHkPnxn0ifrvo3mm8UK3YMiqD4Sclgzt7qEOU56zCYEKqGblz",
        'delivery_note': '',
        'deliveryFee ': 10.5,
        'items': {}
      });

  dioResponse.Response<dynamic> response = await _remote.dio.post(
      '/order',
      // options: Options(contentType: Headers.formUrlEncodedContentType),
      data: formData,
    );

      if (response.statusCode != 200) {
      throw ServerNotAvaiableException();
    }

    return unit;

  }
}
