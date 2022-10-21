// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_articles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListArticlesResponse _$$_ListArticlesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ListArticlesResponse(
      count: json['count'] as int,
      articles: (json['articles'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ListArticlesResponseToJson(
        _$_ListArticlesResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'articles': instance.articles,
    };
