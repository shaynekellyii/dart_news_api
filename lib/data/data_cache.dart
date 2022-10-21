import 'package:dcache/dcache.dart';
import 'package:logging/logging.dart';

///
/// Stores cache entries in a LRU cache with max 100 entries and default
/// lifetime of 6 hours.
///
class DataCache<K, V> {
  DataCache({
    Cache<K, V>? cache,
  }) : _cache =
            cache ?? LruCache<K, V>(storage: InMemoryStorage(_maxCacheEntries))
              ..expiration = _ttl;

  static const _maxCacheEntries = 100;
  static const _ttl = Duration(hours: 6);

  final Cache<K, V> _cache;
  final _logger = Logger('DataCache');

  void put(K key, V value) {
    _logger.info('Putting value for key $key');
    _cache[key] = value;
  }

  V? get(K key) {
    _logger.info('Getting cached value for key $key');
    return _cache[key];
  }
}
