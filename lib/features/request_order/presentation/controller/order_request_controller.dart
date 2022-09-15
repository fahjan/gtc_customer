import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:gtc_customer/core/utils/helpers.dart';
import '../../../../core/exceptions/failure.dart';
import '../../domain/entities/data_entity.dart';
import '../../domain/usecases/list_data_usecases.dart';
import '../../domain/usecases/make_order_usecase.dart';

class OrderRequestController extends GetxController {
  final ListDataUsecases _listDataUsecase;
  final MakeOrderUsecase _makeOrderUsecase;

  RxList<DataEntity> listOfDataEntity = <DataEntity>[].obs;
  Rx<bool> isLoading = false.obs;
  String message = '';

  OrderRequestController(this._listDataUsecase, this._makeOrderUsecase);

  late StreamSubscription<ConnectivityResult> _subscription;

  @override
  void onInit() {
    //getListOfData();
    _subscription = Helpers.getConnectionListener((listen) {
      if (listen == ConnectivityResult.wifi) {
        getListOfData();
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    _subscription.cancel();
    super.onClose();
  }

  Future<void> getListOfData() async {
    isLoading.value = true;

    Either<Failure, List<DataEntity>> responseData =
        await _listDataUsecase.call();

    responseData.fold((Failure failure) {
      if (failure is ServerNotAvaiableFailure) {
        message = 'ServerNotAvaiableFailure';
      } else if (failure is InternetNotAvaiableFailure) {
        message = 'InternetNotAvaiableFailure';
      }
      isLoading.value = false;
    }, (List<DataEntity> data) {
      listOfDataEntity.value = data;
      isLoading.value = false;
    });
  }

  Future<Unit?> makeOrder() async {
    Either<Failure, Unit> response = await _makeOrderUsecase.call();

     return response.fold((Failure failure) {
      if (failure is ServerNotAvaiableFailure) {
        message = 'ServerNotAvaiableFailure';
      } else if (failure is InternetNotAvaiableFailure) {
        message = 'InternetNotAvaiableFailure';
      }
    }, (r) => r);
  }
}
