import 'dart:convert';

import 'package:bookly/models/book.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'https://www.googleapis.com';
  static const String books = '/books/v1/volumes';

  Future<List<Book>> getBooks({String genreType = 'computers'}) async {
    final response = await http.get(Uri.parse('$baseUrl$books?q=$genreType' ));
        final body = jsonDecode(response.body);
    final Iterable items = body['items'];
    return items
        .map(
          (json) => Book.fromJson(json),
        )
        .toList();
  }
}
