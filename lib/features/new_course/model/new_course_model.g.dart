// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_course_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewCourseModelImpl _$$NewCourseModelImplFromJson(Map<String, dynamic> json) =>
    _$NewCourseModelImpl(
      status: json['status'] as String? ?? '',
      message: json['message'] as String? ?? '',
      data: (json['Data'] as List<dynamic>?)
              ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$NewCourseModelImplToJson(
        _$NewCourseModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'Data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      corId: (json['cor_id'] as num?)?.toInt() ?? 0,
      categoryId: (json['category_id'] as num?)?.toInt() ?? 0,
      corTitle: json['cor_title'] as String? ?? '',
      corImg: json['cor_img'] as String? ?? '',
      corDesc: json['cor_desc'] as String? ?? '',
      status: (json['status'] as num?)?.toInt() ?? 0,
      createdAt: json['created_at'] as String? ?? '',
      updatedAt: json['updated_at'] as String? ?? '',
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'cor_id': instance.corId,
      'category_id': instance.categoryId,
      'cor_title': instance.corTitle,
      'cor_img': instance.corImg,
      'cor_desc': instance.corDesc,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };