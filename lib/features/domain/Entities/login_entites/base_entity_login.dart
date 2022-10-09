import 'package:equatable/equatable.dart';

import 'data_entity.dart';

class BaseEntityLogin extends Equatable {
  late DataEntity data;

  BaseEntityLogin({
    required this.data,
  });

  BaseEntityLogin.empty();

  @override
  // TODO: implement props
  List<Object?> get props => [data];
}
