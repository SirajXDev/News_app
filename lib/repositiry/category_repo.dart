import 'dart:convert';

import 'package:fyp_news_project/models/category_model.dart';
import 'package:http/http.dart' as http;

class NewsCategoriesRepo{
  Future<CategoriesNewsModel> fetchNewsCategoires(String category) async {
    String newsUrl =
        'https://newsapi.org/v2/everything?q=$category&apiKey=4f377273fdd74ca7bfbd7ebcaffdc618';
    final response = await http.get(Uri.parse(newsUrl));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      return CategoriesNewsModel.fromJson(body);
    } else {
      throw Exception('Error');
    }
  }
}