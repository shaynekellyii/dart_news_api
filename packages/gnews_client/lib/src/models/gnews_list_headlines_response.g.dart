// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gnews_list_headlines_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GNewsListHeadlinesResponse _$$_GNewsListHeadlinesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GNewsListHeadlinesResponse(
      totalArticles: json['totalArticles'] as int,
      articles: (json['articles'] as List<dynamic>)
          .map((e) => GNewsArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GNewsListHeadlinesResponseToJson(
        _$_GNewsListHeadlinesResponse instance) =>
    <String, dynamic>{
      'totalArticles': instance.totalArticles,
      'articles': instance.articles,
    };
