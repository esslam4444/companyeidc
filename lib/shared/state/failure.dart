import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'failure.g.dart';

abstract class Failure {
  String? get message;
}

class ConnectionFailure extends Failure {
  final DioError? error;

  ConnectionFailure({this.error});

  @override
  String? get message => null;
}

@JsonSerializable()
class ResponseFailure extends Failure {
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'title')
  final String message;
  @JsonKey(name: 'status')
  final int status;

  ResponseFailure({required this.type, required this.status, required this.message});

  factory ResponseFailure.fromJson(Map<String, dynamic> json) => _$ResponseFailureFromJson(json);
}
