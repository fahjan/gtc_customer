import 'package:equatable/equatable.dart';
import 'data_entity.dart';

class BaseEntity extends Equatable {
  final List<DataEntity> data;
  const BaseEntity({required this.data});

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [data];
}
