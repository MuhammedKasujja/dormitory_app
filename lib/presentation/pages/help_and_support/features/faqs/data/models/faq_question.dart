import 'dart:convert';

import 'package:equatable/equatable.dart';

class FaqQuestion extends Equatable {
  final String id;
  final String title;
  final String descrption;

  const FaqQuestion({
    required this.id,
    required this.title,
    required this.descrption,
  });

  @override
  List<Object> get props => [id, title, descrption];

  FaqQuestion copyWith({
    String? id,
    String? title,
    String? descrption,
  }) {
    return FaqQuestion(
      id: id ?? this.id,
      title: title ?? this.title,
      descrption: descrption ?? this.descrption,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'descrption': descrption,
    };
  }

  factory FaqQuestion.fromMap(Map<String, dynamic> map) {
    return FaqQuestion(
      id: map['id'] as String,
      title: map['title'] as String,
      descrption: map['descrption'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FaqQuestion.fromJson(String source) =>
      FaqQuestion.fromMap(json.decode(source) as Map<String, dynamic>);
}
