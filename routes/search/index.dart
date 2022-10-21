import 'package:dart_frog/dart_frog.dart';
import 'package:gnews_client/gnews_client.dart';
import 'package:logging/logging.dart';
import 'package:news_server/data/data.dart';

const _keywordRequiredMsg = 'Bad request, keyword is required.';

Future<Response> onRequest(RequestContext context) async {
  final logger = Logger('/search');
  final params = context.request.uri.queryParameters;

  final count = int.tryParse(params['count'] ?? '') ?? 10;
  final country = params['country'];
  final keyword = params['keyword'];

  if (keyword == null) {
    logger.severe(_keywordRequiredMsg);
    return Response.json(
      statusCode: 400,
      body: {'error': _keywordRequiredMsg},
    );
  }
  logger.info(
    'Searching for $count articles, keyword: $keyword, country: $country',
  );

  try {
    return Response.json(
      body: (await context.read<GNewsRepository>().searchArticles(
                keyword: keyword,
                country: country,
                count: count,
              ))
          .toJson(),
    );
  } on GNewsClientException catch (e) {
    logger.severe('Upstream error fetching articles: ${e.toString()}');
    return Response.json(
      statusCode: e.statusCode ?? 500,
      body: {'error': e.toString()},
    );
  }
}
