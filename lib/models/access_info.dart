import 'package:bookly/models/epub.dart';
import 'package:bookly/models/pdf.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_info.freezed.dart';
part 'access_info.g.dart';

@freezed
class AccessInfo with _$AccessInfo {
  factory AccessInfo({
    String? country,
    String? viewability,
    bool? embeddable,
    bool? publicDomain,
    String? textToSpeechPermission,
    Epub? epub,
    Pdf? pdf,
    String? webReaderLink,
    String? accessViewStatus,
    bool? quoteSharingAllowed,
  }) = _AccessInfo;

  factory AccessInfo.fromJson(Map<String, dynamic> json) =>
      _$AccessInfoFromJson(json);
}
