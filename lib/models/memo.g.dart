// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MemoModel _$$_MemoModelFromJson(Map<String, dynamic> json) => _$_MemoModel(
      title: json['title'] as String,
      text: json['text'] as String,
      time: json['time'] == null
          ? const ModelTimestamp()
          : ModelTimestamp.fromJson(json['time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MemoModelToJson(_$_MemoModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'text': instance.text,
      'time': instance.time,
    };
