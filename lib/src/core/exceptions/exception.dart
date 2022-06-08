class ErrorService implements Exception {}

class MoviException implements Exception {
  const MoviException(this.errors);

  final String errors;
}
