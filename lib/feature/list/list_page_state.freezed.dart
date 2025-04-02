// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListPageState {

 SortType get sortType; List<int> get filterType;
/// Create a copy of ListPageState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListPageStateCopyWith<ListPageState> get copyWith => _$ListPageStateCopyWithImpl<ListPageState>(this as ListPageState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListPageState&&(identical(other.sortType, sortType) || other.sortType == sortType)&&const DeepCollectionEquality().equals(other.filterType, filterType));
}


@override
int get hashCode => Object.hash(runtimeType,sortType,const DeepCollectionEquality().hash(filterType));

@override
String toString() {
  return 'ListPageState(sortType: $sortType, filterType: $filterType)';
}


}

/// @nodoc
abstract mixin class $ListPageStateCopyWith<$Res>  {
  factory $ListPageStateCopyWith(ListPageState value, $Res Function(ListPageState) _then) = _$ListPageStateCopyWithImpl;
@useResult
$Res call({
 SortType sortType, List<int> filterType
});




}
/// @nodoc
class _$ListPageStateCopyWithImpl<$Res>
    implements $ListPageStateCopyWith<$Res> {
  _$ListPageStateCopyWithImpl(this._self, this._then);

  final ListPageState _self;
  final $Res Function(ListPageState) _then;

/// Create a copy of ListPageState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sortType = null,Object? filterType = null,}) {
  return _then(_self.copyWith(
sortType: null == sortType ? _self.sortType : sortType // ignore: cast_nullable_to_non_nullable
as SortType,filterType: null == filterType ? _self.filterType : filterType // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// @nodoc


class _ListPageState implements ListPageState {
  const _ListPageState({this.sortType = SortType.addDayAsc, final  List<int> filterType = const []}): _filterType = filterType;
  

@override@JsonKey() final  SortType sortType;
 final  List<int> _filterType;
@override@JsonKey() List<int> get filterType {
  if (_filterType is EqualUnmodifiableListView) return _filterType;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_filterType);
}


/// Create a copy of ListPageState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListPageStateCopyWith<_ListPageState> get copyWith => __$ListPageStateCopyWithImpl<_ListPageState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListPageState&&(identical(other.sortType, sortType) || other.sortType == sortType)&&const DeepCollectionEquality().equals(other._filterType, _filterType));
}


@override
int get hashCode => Object.hash(runtimeType,sortType,const DeepCollectionEquality().hash(_filterType));

@override
String toString() {
  return 'ListPageState(sortType: $sortType, filterType: $filterType)';
}


}

/// @nodoc
abstract mixin class _$ListPageStateCopyWith<$Res> implements $ListPageStateCopyWith<$Res> {
  factory _$ListPageStateCopyWith(_ListPageState value, $Res Function(_ListPageState) _then) = __$ListPageStateCopyWithImpl;
@override @useResult
$Res call({
 SortType sortType, List<int> filterType
});




}
/// @nodoc
class __$ListPageStateCopyWithImpl<$Res>
    implements _$ListPageStateCopyWith<$Res> {
  __$ListPageStateCopyWithImpl(this._self, this._then);

  final _ListPageState _self;
  final $Res Function(_ListPageState) _then;

/// Create a copy of ListPageState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sortType = null,Object? filterType = null,}) {
  return _then(_ListPageState(
sortType: null == sortType ? _self.sortType : sortType // ignore: cast_nullable_to_non_nullable
as SortType,filterType: null == filterType ? _self._filterType : filterType // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
