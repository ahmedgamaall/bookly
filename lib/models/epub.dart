import 'package:freezed_annotation/freezed_annotation.dart';

part 'epub.freezed.dart';
part 'epub.g.dart';

@freezed
class Epub with _$Epub {
  factory Epub({
    bool? isAvailable,
  }) = _Epub;

  factory Epub.fromJson(Map<String, dynamic> json) => _$EpubFromJson(json);
}
