import 'package:bookly/models/access_info.dart';
import 'package:bookly/models/sale_info.dart';
import 'package:bookly/models/search_info.dart';
import 'package:bookly/models/volume_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  factory Book({
    required VolumeInfo volumeInfo,
    String? kind,
    String? id,
    String? etag,
    String? selfLink,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
