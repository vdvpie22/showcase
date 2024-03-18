import 'package:json_annotation/json_annotation.dart';

part 'error_description.g.dart';

@JsonSerializable()
class ErrorDescription {
  final String id;
  final String description;

  ErrorDescription({required this.id, required this.description});

  factory ErrorDescription.fromJson(Map<String, dynamic> json) =>
      _$ErrorDescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorDescriptionToJson(this);
}
