import 'package:bloc/bloc.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:equatable/equatable.dart';
import 'package:collection/collection.dart';

part 'chat_attachments_event.dart';
part 'chat_attachments_state.dart';

class ChatAttachmentsBloc
    extends Bloc<ChatAttachmentsEvent, ChatAttachmentsState> {
  ChatAttachmentsBloc()
      : super(const ChatAttachmentsState(recentFiles: [], files: [])) {
    on<LoadRecentFiles>((event, emit) {
      emit(state.copyWith(attachmentMethod: AttachmentMethod.recent));
      final List<FileAttachmentModel> recentFiles = [
        const FileAttachmentModel(
          path: '/doc/files/jfkdkfldfd',
          name: 'Canva View Dorm',
          size: '250KB',
          createdAt: '7/6/23',
          type: FileType.pdf,
        ),
        const FileAttachmentModel(
          path: '/doc/files/fhgdfdifndnfkldfjld',
          name: 'Dorm araial view',
          size: '300KB',
          createdAt: '7/6/23',
          type: FileType.doc,
        ),
        const FileAttachmentModel(
          path: '/doc/files/fhjdctxuicxkhcbkfe',
          name: 'Dorm inside',
          size: '50KB',
          createdAt: '8/6/23',
          type: FileType.pdf,
        ),
        const FileAttachmentModel(
          path: '/doc/files/hgfhdkfiovhiyoitrolkvc',
          name: 'Canva View Dorm',
          size: '20KB',
          createdAt: '7/6/23',
          type: FileType.doc,
        ),
      ];

      emit(state.copyWith(recentFiles: recentFiles));
    });

    on<GetFiles>((event, emit) {
      emit(state.copyWith(attachmentMethod: AttachmentMethod.files));
      final List<FileAttachmentModel> files = [
        const FileAttachmentModel(
          path: '/doc/files',
          name: 'Canva View Dorm',
          size: '250KB',
          createdAt: '7/6/23',
          type: FileType.pdf,
        ),
        const FileAttachmentModel(
          path: '/doc/files',
          name: 'Dorm araial view',
          size: '300KB',
          createdAt: '7/6/23',
          type: FileType.doc,
        ),
        const FileAttachmentModel(
          path: '/doc/files',
          name: 'Dorm inside',
          size: '50KB',
          createdAt: '7/6/23',
          type: FileType.pdf,
        ),
        const FileAttachmentModel(
          path: '/doc/files',
          name: 'Canva View Dorm',
          size: '20KB',
          createdAt: '7/6/23',
          type: FileType.doc,
        ),
      ];
      emit(state.copyWith(files: files));
    });

    on<LoadGallery>((event, emit) {
      emit(state.copyWith(attachmentMethod: AttachmentMethod.media));
    });

    on<SelectAttachment>((event, emit) {
      if (state.selectedFiles.firstWhereOrNull(
              (element) => element.path == event.attachment.path) ==
          null) {
        emit(
          state.copyWith(
            selectedFiles: [...state.selectedFiles, event.attachment],
          ),
        );
      } else {
        final selectedFiles = [...state.selectedFiles];
        selectedFiles
            .removeWhere((element) => element.path == event.attachment.path);
        emit(state.copyWith(selectedFiles: selectedFiles));
      }
    });

    on<LoadMedia>((event, emit) {
      emit(state.copyWith(selectedFiles: []));
      if (event.attachmentMethod == AttachmentMethod.recent) {
        add(LoadRecentFiles());
      }
      if (event.attachmentMethod == AttachmentMethod.media) {
        add(LoadGallery());
      }
      if (event.attachmentMethod == AttachmentMethod.files) {
        add(GetFiles());
      }
    });
  }
}
