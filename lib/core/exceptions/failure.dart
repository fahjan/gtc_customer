import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable{}

class ServerNotAvaiableFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class InternetNotAvaiableFailure extends Failure {
  @override
  List<Object?> get props => [];
}
