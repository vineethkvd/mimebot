// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_course_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewCourseModel _$NewCourseModelFromJson(Map<String, dynamic> json) {
  return _NewCourseModel.fromJson(json);
}

/// @nodoc
mixin _$NewCourseModel {
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "Data")
  List<Data>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewCourseModelCopyWith<NewCourseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewCourseModelCopyWith<$Res> {
  factory $NewCourseModelCopyWith(
          NewCourseModel value, $Res Function(NewCourseModel) then) =
      _$NewCourseModelCopyWithImpl<$Res, NewCourseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "Data") List<Data>? data});
}

/// @nodoc
class _$NewCourseModelCopyWithImpl<$Res, $Val extends NewCourseModel>
    implements $NewCourseModelCopyWith<$Res> {
  _$NewCourseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewCourseModelImplCopyWith<$Res>
    implements $NewCourseModelCopyWith<$Res> {
  factory _$$NewCourseModelImplCopyWith(_$NewCourseModelImpl value,
          $Res Function(_$NewCourseModelImpl) then) =
      __$$NewCourseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") String? status,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "Data") List<Data>? data});
}

/// @nodoc
class __$$NewCourseModelImplCopyWithImpl<$Res>
    extends _$NewCourseModelCopyWithImpl<$Res, _$NewCourseModelImpl>
    implements _$$NewCourseModelImplCopyWith<$Res> {
  __$$NewCourseModelImplCopyWithImpl(
      _$NewCourseModelImpl _value, $Res Function(_$NewCourseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$NewCourseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewCourseModelImpl implements _NewCourseModel {
  const _$NewCourseModelImpl(
      {@JsonKey(name: "status") this.status = '',
      @JsonKey(name: "message") this.message = '',
      @JsonKey(name: "Data") final List<Data>? data = const []})
      : _data = data;

  factory _$NewCourseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewCourseModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "message")
  final String? message;
  final List<Data>? _data;
  @override
  @JsonKey(name: "Data")
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NewCourseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewCourseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewCourseModelImplCopyWith<_$NewCourseModelImpl> get copyWith =>
      __$$NewCourseModelImplCopyWithImpl<_$NewCourseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewCourseModelImplToJson(
      this,
    );
  }
}

abstract class _NewCourseModel implements NewCourseModel {
  const factory _NewCourseModel(
      {@JsonKey(name: "status") final String? status,
      @JsonKey(name: "message") final String? message,
      @JsonKey(name: "Data") final List<Data>? data}) = _$NewCourseModelImpl;

  factory _NewCourseModel.fromJson(Map<String, dynamic> json) =
      _$NewCourseModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "Data")
  List<Data>? get data;
  @override
  @JsonKey(ignore: true)
  _$$NewCourseModelImplCopyWith<_$NewCourseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "cor_id")
  int? get corId => throw _privateConstructorUsedError;
  @JsonKey(name: "category_id")
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: "cor_title")
  String? get corTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "cor_img")
  String? get corImg => throw _privateConstructorUsedError;
  @JsonKey(name: "cor_desc")
  String? get corDesc => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "cor_id") int? corId,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "cor_title") String? corTitle,
      @JsonKey(name: "cor_img") String? corImg,
      @JsonKey(name: "cor_desc") String? corDesc,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? corId = freezed,
    Object? categoryId = freezed,
    Object? corTitle = freezed,
    Object? corImg = freezed,
    Object? corDesc = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      corId: freezed == corId
          ? _value.corId
          : corId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      corTitle: freezed == corTitle
          ? _value.corTitle
          : corTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      corImg: freezed == corImg
          ? _value.corImg
          : corImg // ignore: cast_nullable_to_non_nullable
              as String?,
      corDesc: freezed == corDesc
          ? _value.corDesc
          : corDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "cor_id") int? corId,
      @JsonKey(name: "category_id") int? categoryId,
      @JsonKey(name: "cor_title") String? corTitle,
      @JsonKey(name: "cor_img") String? corImg,
      @JsonKey(name: "cor_desc") String? corDesc,
      @JsonKey(name: "status") int? status,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "updated_at") String? updatedAt});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? corId = freezed,
    Object? categoryId = freezed,
    Object? corTitle = freezed,
    Object? corImg = freezed,
    Object? corDesc = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DataImpl(
      corId: freezed == corId
          ? _value.corId
          : corId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      corTitle: freezed == corTitle
          ? _value.corTitle
          : corTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      corImg: freezed == corImg
          ? _value.corImg
          : corImg // ignore: cast_nullable_to_non_nullable
              as String?,
      corDesc: freezed == corDesc
          ? _value.corDesc
          : corDesc // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "cor_id") this.corId = 0,
      @JsonKey(name: "category_id") this.categoryId = 0,
      @JsonKey(name: "cor_title") this.corTitle = '',
      @JsonKey(name: "cor_img") this.corImg = '',
      @JsonKey(name: "cor_desc") this.corDesc = '',
      @JsonKey(name: "status") this.status = 0,
      @JsonKey(name: "created_at") this.createdAt = '',
      @JsonKey(name: "updated_at") this.updatedAt = ''});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "cor_id")
  final int? corId;
  @override
  @JsonKey(name: "category_id")
  final int? categoryId;
  @override
  @JsonKey(name: "cor_title")
  final String? corTitle;
  @override
  @JsonKey(name: "cor_img")
  final String? corImg;
  @override
  @JsonKey(name: "cor_desc")
  final String? corDesc;
  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final String? updatedAt;

  @override
  String toString() {
    return 'Data(corId: $corId, categoryId: $categoryId, corTitle: $corTitle, corImg: $corImg, corDesc: $corDesc, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.corId, corId) || other.corId == corId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.corTitle, corTitle) ||
                other.corTitle == corTitle) &&
            (identical(other.corImg, corImg) || other.corImg == corImg) &&
            (identical(other.corDesc, corDesc) || other.corDesc == corDesc) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, corId, categoryId, corTitle,
      corImg, corDesc, status, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {@JsonKey(name: "cor_id") final int? corId,
      @JsonKey(name: "category_id") final int? categoryId,
      @JsonKey(name: "cor_title") final String? corTitle,
      @JsonKey(name: "cor_img") final String? corImg,
      @JsonKey(name: "cor_desc") final String? corDesc,
      @JsonKey(name: "status") final int? status,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "updated_at") final String? updatedAt}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "cor_id")
  int? get corId;
  @override
  @JsonKey(name: "category_id")
  int? get categoryId;
  @override
  @JsonKey(name: "cor_title")
  String? get corTitle;
  @override
  @JsonKey(name: "cor_img")
  String? get corImg;
  @override
  @JsonKey(name: "cor_desc")
  String? get corDesc;
  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}