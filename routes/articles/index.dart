import 'package:dart_frog/dart_frog.dart';
import 'package:gnews_client/gnews_client.dart';
import 'package:logging/logging.dart';
import 'package:news_server/data/data.dart';

Future<Response> onRequest(RequestContext context) async {
  final logger = Logger('/articles');
  final count =
      int.tryParse(context.request.uri.queryParameters['count'] ?? '') ?? 10;
  logger.info('Requesting $count articles');

  try {
    return Response.json(
      body: (await context.read<GNewsRepository>().listTopHeadlines(
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
