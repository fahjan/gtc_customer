import 'package:equatable/equatable.dart';
import 'package:gtc_customer/features/request_order/domain/entities/data_entity.dart';

class BaseEntity extends Equatable {
  List<DataEntity> data;
  BaseEntity({required this.data});

  
  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [data];
}
