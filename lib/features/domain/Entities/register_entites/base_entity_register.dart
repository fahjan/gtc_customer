import 'package:equatable/equatable.dart';

import 'data_entity.dart';

class BaseEntityRegister extends Equatable {
  DataEntity data;
  String message;

  BaseEntityRegister({
    required this.data,
    required this.message,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        data,
        message,
      ];
}
