// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    ErrorResponse(
      errorCode: json['error_code'] as int?,
      errorText: json['error_text'] as String?,
      errors: (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorDescription.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ErrorResponseToJson(ErrorResponse instance) =>
    <String, dynamic>{
      'error_code': instance.errorCode,
      'error_text': instance.errorText,
      'errors': instance.errors,
    };
