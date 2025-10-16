// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Todo _$TodoFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Todo',
  json,
      ($checkedConvert) {
    final val = Todo(
      title: $checkedConvert('title', (v) => v as String),
      id: $checkedConvert('id', (v) => v as String?),
      description:
      $checkedConvert('description', (v) => v as String? ?? ''),
      isCompleted:
      $checkedConvert('isCompleted', (v) => v as bool? ?? false),
    );
    return val;
  },
  fieldKeyMap: const {'isCompleted': 'isCompleted'},
);

Map<String, dynamic> _$TodoToJson(Todo instance) => <String,  dynamic>{
  'id': instance.id,
  'title': instance.title,
  'description': instance.description,
  'isCompleted': instance.isCompleted,
};
