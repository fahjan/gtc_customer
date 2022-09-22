import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  String message = "Failure";

  Failure(this.message);
}

class InternetNotAvailableFailure extends Failure {
  @override
  List<Object?> get props => [message];

  InternetNotAvailableFailure(super.message);
}

class ServerNotAvailableFailure extends Failure {
  @override
  List<Object?> get props => [message];

  ServerNotAvailableFailure(super.message);
}
