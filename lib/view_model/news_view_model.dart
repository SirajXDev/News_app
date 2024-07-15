import 'package:fyp_news_project/models/news_channel_headline.dart';
import 'package:fyp_news_project/repositiry/news_repository.dart';

class NewsViewModel {
  final _rep = NewsRepository();

  Future<NewsChannelHeadlineModel> fetchNewsChannelHeadlineApi(String channelName) async {
    final response = await _rep.fetchNewsChannelHeadlineApi(channelName);
    return response;
  }
}
