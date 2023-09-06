part of 'chat_attachments_bloc.dart';

class ChatAttachmentsState extends Equatable {
  final List<FileAttachmentModel> recentFiles;
  final List<FileAttachmentModel> files;
  final AttachmentMethod? attachmentMethod;
  final List<FileAttachmentModel> selectedFiles;

  const ChatAttachmentsState({
    required this.recentFiles,
    required this.files,
    this.attachmentMethod = AttachmentMethod.recent,
    this.selectedFiles = const [],
  });

  ChatAttachmentsState copyWith(
      {List<FileAttachmentModel>? recentFiles,
      List<FileAttachmentModel>? files,
      AttachmentMethod? attachmentMethod,
      List<FileAttachmentModel>? selectedFiles}) {
    return ChatAttachmentsState(
      recentFiles: recentFiles ?? this.recentFiles,
      files: files ?? this.files,
      attachmentMethod: attachmentMethod ?? this.attachmentMethod,
      selectedFiles: selectedFiles ?? this.selectedFiles,
    );
  }

  bool isFileSelected(FileAttachmentModel file) {
    return selectedFiles
            .firstWhereOrNull((element) => element.path == file.path) !=
        null;
  }

  @override
  List<Object?> get props => [
        files,
        recentFiles,
        attachmentMethod,
        selectedFiles,
      ];
}
