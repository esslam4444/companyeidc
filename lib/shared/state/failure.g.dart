// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseFailure _$ResponseFailureFromJson(Map<String, dynamic> json) =>
    ResponseFailure(
      type: json['type'] as String,
      status: json['status'] as int,
      message: json['title'] as String,
    );

Map<String, dynamic> _$ResponseFailureToJson(ResponseFailure instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.message,
      'status': instance.status,
    };
