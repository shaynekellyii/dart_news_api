// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gnews_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GNewsArticle _$$_GNewsArticleFromJson(Map<String, dynamic> json) =>
    _$_GNewsArticle(
      title: json['title'] as String,
      description: json['description'] as String,
      content: json['content'] as String,
      url: json['url'] as String,
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      source: GNewsSource.fromJson(json['source'] as Map<String, dynamic>),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_GNewsArticleToJson(_$_GNewsArticle instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'content': instance.content,
      'url': instance.url,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'source': instance.source,
      'image': instance.image,
    };
