import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'note_model.g.dart';
@JsonSerializable()
@HiveField(0)
class NoteModel extends HiveObject
{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel( {
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color
  });

}