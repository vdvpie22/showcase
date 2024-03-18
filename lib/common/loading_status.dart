enum LoadingStatus { loading, failed, success, canceled, pure }

extension LoadingStatusExtension on LoadingStatus {
  bool get isLoading => this == LoadingStatus.loading;

  bool get isFailed => this == LoadingStatus.failed;

  bool get isSuccess => this == LoadingStatus.success;

  bool get isCanceled => this == LoadingStatus.canceled;

  bool get isPure => this == LoadingStatus.pure;
}
