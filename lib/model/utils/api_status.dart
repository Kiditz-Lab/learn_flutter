enum ApiStatus { initial, loading, success, error }

extension ApiStatueExt on ApiStatus {
  isLoading() => this == ApiStatus.loading;
  isSuccess() => this == ApiStatus.success;
  isError() => this == ApiStatus.error;
}
