import 'package:bookly/app/app.locator.dart';
import 'package:bookly/models/book.dart';
import 'package:bookly/services/api_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends FutureViewModel<List<Book>> {
  final _apiService = locator<ApiService>();

  @override
  Future<List<Book>> futureToRun() => _apiService.getBooks();
}
