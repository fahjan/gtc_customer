import 'package:equatable/equatable.dart';

class ErrorsEntity extends Equatable {
  List<String> email;
  List<String> mobile;
  List<String> password;

  ErrorsEntity({required this.email,required this.mobile,required this.password});

  @override
  // TODO: implement props
  List<Object?> get props => [
        email,
        mobile,
        password,
      ];
}
