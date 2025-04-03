import 'package:freezed_annotation/freezed_annotation.dart';

part 'reading_modes.freezed.dart';
part 'reading_modes.g.dart';

@freezed
class ReadingModes with _$ReadingModes {
  factory ReadingModes({
    bool? text,
    bool? image,
  }) = _ReadingModes;

  factory ReadingModes.fromJson(Map<String, dynamic> json) =>
      _$ReadingModesFromJson(json);
}
