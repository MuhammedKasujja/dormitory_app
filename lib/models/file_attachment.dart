// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:dormitory_app/models/enums.dart';

class FileAttachmentModel extends Equatable {
  final String path;
  final String name;
  final String size;
  final String createdAt;
  final FileType type;

  const FileAttachmentModel({
    required this.path,
    required this.name,
    required this.size,
    required this.createdAt,
    required this.type,
  });


  @override
  List<Object> get props {
    return [
      path,
      name,
      size,
      createdAt,
      type,
    ];
  }
}
