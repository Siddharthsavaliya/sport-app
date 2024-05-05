// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaqModelImpl _$$FaqModelImplFromJson(Map<String, dynamic> json) =>
    _$FaqModelImpl(
      question: json['question'] as String?,
      answer: json['answer'] as String?,
      id: json['_id'] as String?,
    );

Map<String, dynamic> _$$FaqModelImplToJson(_$FaqModelImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
      '_id': instance.id,
    };
