// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NoteModel _$NoteModelFromJson(Map<String, dynamic> json) => NoteModel(
      title: json['title'] as String,
      subTitle: json['subTitle'] as String,
      date: json['date'] as String,
      color: (json['color'] as num).toInt(),
    );

Map<String, dynamic> _$NoteModelToJson(NoteModel instance) => <String, dynamic>{
      'title': instance.title,
      'subTitle': instance.subTitle,
      'date': instance.date,
      'color': instance.color,
    };
