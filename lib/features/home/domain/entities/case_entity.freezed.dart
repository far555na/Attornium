// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CaseEntity {

 String get title; String get caseId; String get status; Color get statusColor; Color get statusBgColor; IconData get icon; String? get lawyerName; String? get lawyerAction; String? get lawyerImage; bool get hasActions; bool get isSearching; double? get searchProgress;
/// Create a copy of CaseEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CaseEntityCopyWith<CaseEntity> get copyWith => _$CaseEntityCopyWithImpl<CaseEntity>(this as CaseEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaseEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.caseId, caseId) || other.caseId == caseId)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusColor, statusColor) || other.statusColor == statusColor)&&(identical(other.statusBgColor, statusBgColor) || other.statusBgColor == statusBgColor)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.lawyerName, lawyerName) || other.lawyerName == lawyerName)&&(identical(other.lawyerAction, lawyerAction) || other.lawyerAction == lawyerAction)&&(identical(other.lawyerImage, lawyerImage) || other.lawyerImage == lawyerImage)&&(identical(other.hasActions, hasActions) || other.hasActions == hasActions)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.searchProgress, searchProgress) || other.searchProgress == searchProgress));
}


@override
int get hashCode => Object.hash(runtimeType,title,caseId,status,statusColor,statusBgColor,icon,lawyerName,lawyerAction,lawyerImage,hasActions,isSearching,searchProgress);

@override
String toString() {
  return 'CaseEntity(title: $title, caseId: $caseId, status: $status, statusColor: $statusColor, statusBgColor: $statusBgColor, icon: $icon, lawyerName: $lawyerName, lawyerAction: $lawyerAction, lawyerImage: $lawyerImage, hasActions: $hasActions, isSearching: $isSearching, searchProgress: $searchProgress)';
}


}

/// @nodoc
abstract mixin class $CaseEntityCopyWith<$Res>  {
  factory $CaseEntityCopyWith(CaseEntity value, $Res Function(CaseEntity) _then) = _$CaseEntityCopyWithImpl;
@useResult
$Res call({
 String title, String caseId, String status, Color statusColor, Color statusBgColor, IconData icon, String? lawyerName, String? lawyerAction, String? lawyerImage, bool hasActions, bool isSearching, double? searchProgress
});




}
/// @nodoc
class _$CaseEntityCopyWithImpl<$Res>
    implements $CaseEntityCopyWith<$Res> {
  _$CaseEntityCopyWithImpl(this._self, this._then);

  final CaseEntity _self;
  final $Res Function(CaseEntity) _then;

/// Create a copy of CaseEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? caseId = null,Object? status = null,Object? statusColor = null,Object? statusBgColor = null,Object? icon = null,Object? lawyerName = freezed,Object? lawyerAction = freezed,Object? lawyerImage = freezed,Object? hasActions = null,Object? isSearching = null,Object? searchProgress = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,caseId: null == caseId ? _self.caseId : caseId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusColor: null == statusColor ? _self.statusColor : statusColor // ignore: cast_nullable_to_non_nullable
as Color,statusBgColor: null == statusBgColor ? _self.statusBgColor : statusBgColor // ignore: cast_nullable_to_non_nullable
as Color,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,lawyerName: freezed == lawyerName ? _self.lawyerName : lawyerName // ignore: cast_nullable_to_non_nullable
as String?,lawyerAction: freezed == lawyerAction ? _self.lawyerAction : lawyerAction // ignore: cast_nullable_to_non_nullable
as String?,lawyerImage: freezed == lawyerImage ? _self.lawyerImage : lawyerImage // ignore: cast_nullable_to_non_nullable
as String?,hasActions: null == hasActions ? _self.hasActions : hasActions // ignore: cast_nullable_to_non_nullable
as bool,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,searchProgress: freezed == searchProgress ? _self.searchProgress : searchProgress // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [CaseEntity].
extension CaseEntityPatterns on CaseEntity {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CaseEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CaseEntity() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CaseEntity value)  $default,){
final _that = this;
switch (_that) {
case _CaseEntity():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CaseEntity value)?  $default,){
final _that = this;
switch (_that) {
case _CaseEntity() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String caseId,  String status,  Color statusColor,  Color statusBgColor,  IconData icon,  String? lawyerName,  String? lawyerAction,  String? lawyerImage,  bool hasActions,  bool isSearching,  double? searchProgress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CaseEntity() when $default != null:
return $default(_that.title,_that.caseId,_that.status,_that.statusColor,_that.statusBgColor,_that.icon,_that.lawyerName,_that.lawyerAction,_that.lawyerImage,_that.hasActions,_that.isSearching,_that.searchProgress);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String caseId,  String status,  Color statusColor,  Color statusBgColor,  IconData icon,  String? lawyerName,  String? lawyerAction,  String? lawyerImage,  bool hasActions,  bool isSearching,  double? searchProgress)  $default,) {final _that = this;
switch (_that) {
case _CaseEntity():
return $default(_that.title,_that.caseId,_that.status,_that.statusColor,_that.statusBgColor,_that.icon,_that.lawyerName,_that.lawyerAction,_that.lawyerImage,_that.hasActions,_that.isSearching,_that.searchProgress);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String caseId,  String status,  Color statusColor,  Color statusBgColor,  IconData icon,  String? lawyerName,  String? lawyerAction,  String? lawyerImage,  bool hasActions,  bool isSearching,  double? searchProgress)?  $default,) {final _that = this;
switch (_that) {
case _CaseEntity() when $default != null:
return $default(_that.title,_that.caseId,_that.status,_that.statusColor,_that.statusBgColor,_that.icon,_that.lawyerName,_that.lawyerAction,_that.lawyerImage,_that.hasActions,_that.isSearching,_that.searchProgress);case _:
  return null;

}
}

}

/// @nodoc


class _CaseEntity implements CaseEntity {
  const _CaseEntity({required this.title, required this.caseId, required this.status, required this.statusColor, required this.statusBgColor, required this.icon, this.lawyerName, this.lawyerAction, this.lawyerImage, this.hasActions = false, this.isSearching = false, this.searchProgress});
  

@override final  String title;
@override final  String caseId;
@override final  String status;
@override final  Color statusColor;
@override final  Color statusBgColor;
@override final  IconData icon;
@override final  String? lawyerName;
@override final  String? lawyerAction;
@override final  String? lawyerImage;
@override@JsonKey() final  bool hasActions;
@override@JsonKey() final  bool isSearching;
@override final  double? searchProgress;

/// Create a copy of CaseEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CaseEntityCopyWith<_CaseEntity> get copyWith => __$CaseEntityCopyWithImpl<_CaseEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CaseEntity&&(identical(other.title, title) || other.title == title)&&(identical(other.caseId, caseId) || other.caseId == caseId)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusColor, statusColor) || other.statusColor == statusColor)&&(identical(other.statusBgColor, statusBgColor) || other.statusBgColor == statusBgColor)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.lawyerName, lawyerName) || other.lawyerName == lawyerName)&&(identical(other.lawyerAction, lawyerAction) || other.lawyerAction == lawyerAction)&&(identical(other.lawyerImage, lawyerImage) || other.lawyerImage == lawyerImage)&&(identical(other.hasActions, hasActions) || other.hasActions == hasActions)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.searchProgress, searchProgress) || other.searchProgress == searchProgress));
}


@override
int get hashCode => Object.hash(runtimeType,title,caseId,status,statusColor,statusBgColor,icon,lawyerName,lawyerAction,lawyerImage,hasActions,isSearching,searchProgress);

@override
String toString() {
  return 'CaseEntity(title: $title, caseId: $caseId, status: $status, statusColor: $statusColor, statusBgColor: $statusBgColor, icon: $icon, lawyerName: $lawyerName, lawyerAction: $lawyerAction, lawyerImage: $lawyerImage, hasActions: $hasActions, isSearching: $isSearching, searchProgress: $searchProgress)';
}


}

/// @nodoc
abstract mixin class _$CaseEntityCopyWith<$Res> implements $CaseEntityCopyWith<$Res> {
  factory _$CaseEntityCopyWith(_CaseEntity value, $Res Function(_CaseEntity) _then) = __$CaseEntityCopyWithImpl;
@override @useResult
$Res call({
 String title, String caseId, String status, Color statusColor, Color statusBgColor, IconData icon, String? lawyerName, String? lawyerAction, String? lawyerImage, bool hasActions, bool isSearching, double? searchProgress
});




}
/// @nodoc
class __$CaseEntityCopyWithImpl<$Res>
    implements _$CaseEntityCopyWith<$Res> {
  __$CaseEntityCopyWithImpl(this._self, this._then);

  final _CaseEntity _self;
  final $Res Function(_CaseEntity) _then;

/// Create a copy of CaseEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? caseId = null,Object? status = null,Object? statusColor = null,Object? statusBgColor = null,Object? icon = null,Object? lawyerName = freezed,Object? lawyerAction = freezed,Object? lawyerImage = freezed,Object? hasActions = null,Object? isSearching = null,Object? searchProgress = freezed,}) {
  return _then(_CaseEntity(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,caseId: null == caseId ? _self.caseId : caseId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusColor: null == statusColor ? _self.statusColor : statusColor // ignore: cast_nullable_to_non_nullable
as Color,statusBgColor: null == statusBgColor ? _self.statusBgColor : statusBgColor // ignore: cast_nullable_to_non_nullable
as Color,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as IconData,lawyerName: freezed == lawyerName ? _self.lawyerName : lawyerName // ignore: cast_nullable_to_non_nullable
as String?,lawyerAction: freezed == lawyerAction ? _self.lawyerAction : lawyerAction // ignore: cast_nullable_to_non_nullable
as String?,lawyerImage: freezed == lawyerImage ? _self.lawyerImage : lawyerImage // ignore: cast_nullable_to_non_nullable
as String?,hasActions: null == hasActions ? _self.hasActions : hasActions // ignore: cast_nullable_to_non_nullable
as bool,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,searchProgress: freezed == searchProgress ? _self.searchProgress : searchProgress // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
