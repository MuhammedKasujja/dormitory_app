part of 'chat_attachments_bloc.dart';

class ChatAttachmentsEvent extends Equatable {
  const ChatAttachmentsEvent();

  @override
  List<Object> get props => [];
}

class LoadRecentFiles extends ChatAttachmentsEvent {}

class GetFiles extends ChatAttachmentsEvent {}

class LoadGallery extends ChatAttachmentsEvent {}

class LoadMedia extends ChatAttachmentsEvent {
  final AttachmentMethod attachmentMethod;

  const LoadMedia({required this.attachmentMethod});

  @override
  List<Object> get props => [attachmentMethod];
}

class SelectAttachment extends ChatAttachmentsEvent {
  final FileAttachmentModel attachment;

  const SelectAttachment({required this.attachment}); 

  @override
  List<Object> get props => [attachment];
}
