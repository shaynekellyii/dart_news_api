import 'package:dart_frog/dart_frog.dart';
import 'package:news_server/data/data.dart';

final _repository = GNewsRepository();

Middleware gNewsRepositoryProvider() =>
    provider<GNewsRepository>((context) => _repository);

Handler middleware(Handler handler) => handler.use(gNewsRepositoryProvider());
