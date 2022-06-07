class ErrorService implements Exception {}

class MoviException implements Exception {
  MoviException(this.errors);

  final String errors;
}
