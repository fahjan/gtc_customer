import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:gtc_customer/core/exceptions/failure.dart';
import 'package:gtc_customer/features/request_order/domain/entities/data_entity.dart';
import 'package:gtc_customer/features/request_order/domain/usecases/list_data_usecases.dart';
import 'package:gtc_customer/features/request_order/domain/usecases/make_order_usecase.dart';

class OrderRequestController extends GetxController with StateMixin {
  final ListDataUsecases _listDataUsecase;
  final MakeOrderUsecase _makeOrderUsecase;


  OrderRequestController(this._listDataUsecase,this._makeOrderUsecase);

  Future<void> getListOfData() async {
    change(null, status: RxStatus.loading());

    Either<Failure, List<DataEntity>> responseData =
        await _listDataUsecase.call();

    responseData.fold((Failure failure) {
      if (failure is ServerNotAvaiableFailure) {
        change(null, status: RxStatus.error('Server Not Avaiable'));
      } else if (failure is InternetNotAvaiableFailure) {
        change(null, status: RxStatus.error('Internet Not Avaiable try again ..'));
      }
    }, (List<DataEntity> data) {
      change(data, status: RxStatus.success());
    });
  }


  void makeOrder(){
    _makeOrderUsecase.call();
  }

}
