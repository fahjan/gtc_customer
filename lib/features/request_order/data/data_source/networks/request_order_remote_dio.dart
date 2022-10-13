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
      'merchant_id': 50,
      'service_id': 2,
      'location_id': 251,
      'delivery_at': 'ASAP',
      'rider_tip': 2,
      'price': 35,
      'payment_type': 'card',
      'payment_method': 'vise',
      'onesignal_token': deviceState?.pushToken,
      'delivery_note': '',
      'deliveryFee ': 10.5,
      'items': '''
      [
        {
          "item_id": 934,
          "price": 45,
          "size_id": 20,
          "count": 1,
          "notes": "Notes ",
          "addon": "[]"
        }
      ]''',
    });

    var response = await _remote.dio.post(
      'orders',
      // options: Options(contentType: Headers.formUrlEncodedContentType),
      data: formData,
    );

    if (response.statusCode != 200) {
      // throw ServerNotAvaiableException();
      debugPrint('-----------------');
    }

    return unit;
  }
}
