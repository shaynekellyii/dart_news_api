// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      createdAt: DateTime.parse(json['createdAt'] as String),
      title: json['title'] as String,
      url: json['url'] as String,
      content: json['content'] as String,
      sourceName: json['sourceName'] as String,
      sourceUrl: json['sourceUrl'] as String,
      metadata: json['metadata'],
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt.toIso8601String(),
      'title': instance.title,
      'url': instance.url,
      'content': instance.content,
      'sourceName': instance.sourceName,
      'sourceUrl': instance.sourceUrl,
      'metadata': instance.metadata,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
    };
