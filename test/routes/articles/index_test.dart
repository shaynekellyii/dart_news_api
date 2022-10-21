import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:gnews_client/gnews_client.dart';
import 'package:mocktail/mocktail.dart';
import 'package:news_server/data/data.dart';
import 'package:news_server/models/list_articles_response.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import '../../../routes/articles/index.dart' as route;

class _MockGNewsRepository extends Mock implements GNewsRepository {}

class _MockRequestContext extends Mock implements RequestContext {}

const _listArticlesResponse = ListArticlesResponse(count: 10, articles: []);

void main() {
  group('GET /articles', () {
    test('successful response', () async {
      final context = _MockRequestContext();
      final repository = _MockGNewsRepository();

      when(() => context.read<GNewsRepository>()).thenReturn(repository);
      when(() => context.request).thenReturn(
        Request(
          'GET',
          Uri(
            scheme: 'http',
            host: 'test.com',
            path: '/articles',
            queryParameters: {},
          ),
        ),
      );
      when(() => repository.listTopHeadlines(count: any(named: 'count')))
          .thenAnswer((_) async => _listArticlesResponse);

      final response = await route.onRequest(context);
      expect(response.statusCode, equals(HttpStatus.ok));
    });

    test('400 response', () async {
      final context = _MockRequestContext();
      final repository = _MockGNewsRepository();

      when(() => context.read<GNewsRepository>()).thenReturn(repository);
      when(() => context.request).thenReturn(
        Request(
          'GET',
          Uri(
            scheme: 'http',
            host: 'test.com',
            path: '/articles',
            queryParameters: {},
          ),
        ),
      );
      when(() => repository.listTopHeadlines(count: any(named: 'count')))
          .thenThrow(
        const GNewsClientException(
          msg: 'error',
          statusCode: HttpStatus.badRequest,
        ),
      );

      final response = await route.onRequest(context);
      expect(response.statusCode, equals(HttpStatus.badRequest));
      expect(response.body, isNotNull);
    });
  });
}
