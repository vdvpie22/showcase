import 'package:json_annotation/json_annotation.dart';
import 'package:showcase/core/error/error_description.dart';

part 'error_response.g.dart';

@JsonSerializable()
class ErrorResponse {
  @JsonKey(name: 'error_code')
  final int? errorCode;
  @JsonKey(name: 'error_text')
  final String? errorText;
  final List<ErrorDescription>? errors;

  ErrorResponse({
    this.errorCode,
    this.errorText,
    this.errors,
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);

  factory ErrorResponse.typeError() =>
      ErrorResponse(errorText: 'Incorrect data format');

  factory ErrorResponse.noInternetConnectionError() =>
      ErrorResponse(errorText: 'No Internet Connection');

  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);
}
