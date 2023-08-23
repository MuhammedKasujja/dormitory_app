enum NotificationType {
  sms,
  promotions,
  email,
  pushNotifications,
}

enum ChatListViewType {
  all,
  read,
  unread,
}

enum UserProfileStatus { active, blocked }

enum FileType {
  pdf,
  doc,
}

enum AttachmentMethod {
  recent,
  media,
  files,
}

enum AppState {
  initial,
  loading,
  success,
  failure,
}

extension AppStateX on AppState{
  bool get isInitial  => this == AppState.initial;

  bool get isLoading  => this == AppState.loading;

  bool get isSuccess  => this == AppState.success;

  bool get isFailure  => this == AppState.failure;
}