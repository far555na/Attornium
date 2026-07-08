// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'case_input_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CaseInputState {

 String get details; String? get selectedTopic;
/// Create a copy of CaseInputState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CaseInputStateCopyWith<CaseInputState> get copyWith => _$CaseInputStateCopyWithImpl<CaseInputState>(this as CaseInputState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaseInputState&&(identical(other.details, details) || other.details == details)&&(identical(other.selectedTopic, selectedTopic) || other.selectedTopic == selectedTopic));
}


@override
int get hashCode => Object.hash(runtimeType,details,selectedTopic);

@override
String toString() {
  return 'CaseInputState(details: $details, selectedTopic: $selectedTopic)';
}


}

/// @nodoc
abstract mixin class $CaseInputStateCopyWith<$Res>  {
  factory $CaseInputStateCopyWith(CaseInputState value, $Res Function(CaseInputState) _then) = _$CaseInputStateCopyWithImpl;
@useResult
$Res call({
 String details, String? selectedTopic
});




}
/// @nodoc
class _$CaseInputStateCopyWithImpl<$Res>
    implements $CaseInputStateCopyWith<$Res> {
  _$CaseInputStateCopyWithImpl(this._self, this._then);

  final CaseInputState _self;
  final $Res Function(CaseInputState) _then;

/// Create a copy of CaseInputState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? details = null,Object? selectedTopic = freezed,}) {
  return _then(_self.copyWith(
details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,selectedTopic: freezed == selectedTopic ? _self.selectedTopic : selectedTopic // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CaseInputState].
extension CaseInputStatePatterns on CaseInputState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CaseInputState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CaseInputState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CaseInputState value)  $default,){
final _that = this;
switch (_that) {
case _CaseInputState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CaseInputState value)?  $default,){
final _that = this;
switch (_that) {
case _CaseInputState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String details,  String? selectedTopic)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CaseInputState() when $default != null:
return $default(_that.details,_that.selectedTopic);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String details,  String? selectedTopic)  $default,) {final _that = this;
switch (_that) {
case _CaseInputState():
return $default(_that.details,_that.selectedTopic);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String details,  String? selectedTopic)?  $default,) {final _that = this;
switch (_that) {
case _CaseInputState() when $default != null:
return $default(_that.details,_that.selectedTopic);case _:
  return null;

}
}

}

/// @nodoc


class _CaseInputState implements CaseInputState {
  const _CaseInputState({this.details = '', this.selectedTopic});
  

@override@JsonKey() final  String details;
@override final  String? selectedTopic;

/// Create a copy of CaseInputState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CaseInputStateCopyWith<_CaseInputState> get copyWith => __$CaseInputStateCopyWithImpl<_CaseInputState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CaseInputState&&(identical(other.details, details) || other.details == details)&&(identical(other.selectedTopic, selectedTopic) || other.selectedTopic == selectedTopic));
}


@override
int get hashCode => Object.hash(runtimeType,details,selectedTopic);

@override
String toString() {
  return 'CaseInputState(details: $details, selectedTopic: $selectedTopic)';
}


}

/// @nodoc
abstract mixin class _$CaseInputStateCopyWith<$Res> implements $CaseInputStateCopyWith<$Res> {
  factory _$CaseInputStateCopyWith(_CaseInputState value, $Res Function(_CaseInputState) _then) = __$CaseInputStateCopyWithImpl;
@override @useResult
$Res call({
 String details, String? selectedTopic
});




}
/// @nodoc
class __$CaseInputStateCopyWithImpl<$Res>
    implements _$CaseInputStateCopyWith<$Res> {
  __$CaseInputStateCopyWithImpl(this._self, this._then);

  final _CaseInputState _self;
  final $Res Function(_CaseInputState) _then;

/// Create a copy of CaseInputState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? details = null,Object? selectedTopic = freezed,}) {
  return _then(_CaseInputState(
details: null == details ? _self.details : details // ignore: cast_nullable_to_non_nullable
as String,selectedTopic: freezed == selectedTopic ? _self.selectedTopic : selectedTopic // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
