sealed class ApiResponse {}

class Loading extends ApiResponse {}

class Success<T> extends ApiResponse {
  final T data;
  Success(this.data);
}

class Error extends ApiResponse {
  final String errorMessage;
  Error(this.errorMessage);
}