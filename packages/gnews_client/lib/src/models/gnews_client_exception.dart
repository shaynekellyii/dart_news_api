///
/// Exception for errors when calling the GNews API.
///
class GNewsClientException implements Exception {
  const GNewsClientException({
    this.msg,
    this.statusCode,
  });

  final String? msg;
  final int? statusCode;

  @override
  String toString() => '[GNewsClientException] $statusCode: $msg';
}
