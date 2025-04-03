import 'package:freezed_annotation/freezed_annotation.dart';

part 'industry_identifier.freezed.dart';
part 'industry_identifier.g.dart';

@freezed
class IndustryIdentifier with _$IndustryIdentifier {
  factory IndustryIdentifier({
    String? type,
    String? identifier,
  }) = _IndustryIdentifier;

  factory IndustryIdentifier.fromJson(Map<String, dynamic> json) =>
      _$IndustryIdentifierFromJson(json);
}
