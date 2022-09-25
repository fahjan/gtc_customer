import 'package:equatable/equatable.dart';
import 'package:gtc_customer/features/domain/Entities/register_entites/errors_entity.dart';

import 'data_entity.dart';

class BaseEntityRegister extends Equatable {
  late DataEntity data;
  late String message;
  late ErrorsEntity error;

  BaseEntityRegister({
    required this.data,
    required this.message,
    required this.error,
  });

  BaseEntityRegister.empty();

  @override
  // TODO: implement props
  List<Object?> get props => [
        error,
        data,
        message,
      ];
}
