import 'package:equatable/equatable.dart';

import 'data_entity.dart';

class BaseEntityRegister extends Equatable {
 late DataEntity data;
 late String message;

  BaseEntityRegister({
    required this.data,
    required this.message,
  });
  BaseEntityRegister.empty();

  @override
  // TODO: implement props
  List<Object?> get props => [
        data,
        message,
      ];
}
