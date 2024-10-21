// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plans_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlansEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlans,
    required TResult Function(PlansCreate plan) createPlan,
    required TResult Function(PlansUpdate plan) updatePlan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlans,
    TResult? Function(PlansCreate plan)? createPlan,
    TResult? Function(PlansUpdate plan)? updatePlan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlans,
    TResult Function(PlansCreate plan)? createPlan,
    TResult Function(PlansUpdate plan)? updatePlan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_CreatePlan value) createPlan,
    required TResult Function(_UpdatePlan value) updatePlan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_CreatePlan value)? createPlan,
    TResult? Function(_UpdatePlan value)? updatePlan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_CreatePlan value)? createPlan,
    TResult Function(_UpdatePlan value)? updatePlan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlansEventCopyWith<$Res> {
  factory $PlansEventCopyWith(
          PlansEvent value, $Res Function(PlansEvent) then) =
      _$PlansEventCopyWithImpl<$Res, PlansEvent>;
}

/// @nodoc
class _$PlansEventCopyWithImpl<$Res, $Val extends PlansEvent>
    implements $PlansEventCopyWith<$Res> {
  _$PlansEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchPlansImplCopyWith<$Res> {
  factory _$$FetchPlansImplCopyWith(
          _$FetchPlansImpl value, $Res Function(_$FetchPlansImpl) then) =
      __$$FetchPlansImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchPlansImplCopyWithImpl<$Res>
    extends _$PlansEventCopyWithImpl<$Res, _$FetchPlansImpl>
    implements _$$FetchPlansImplCopyWith<$Res> {
  __$$FetchPlansImplCopyWithImpl(
      _$FetchPlansImpl _value, $Res Function(_$FetchPlansImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchPlansImpl implements _FetchPlans {
  const _$FetchPlansImpl();

  @override
  String toString() {
    return 'PlansEvent.fetchPlans()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchPlansImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlans,
    required TResult Function(PlansCreate plan) createPlan,
    required TResult Function(PlansUpdate plan) updatePlan,
  }) {
    return fetchPlans();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlans,
    TResult? Function(PlansCreate plan)? createPlan,
    TResult? Function(PlansUpdate plan)? updatePlan,
  }) {
    return fetchPlans?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlans,
    TResult Function(PlansCreate plan)? createPlan,
    TResult Function(PlansUpdate plan)? updatePlan,
    required TResult orElse(),
  }) {
    if (fetchPlans != null) {
      return fetchPlans();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_CreatePlan value) createPlan,
    required TResult Function(_UpdatePlan value) updatePlan,
  }) {
    return fetchPlans(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_CreatePlan value)? createPlan,
    TResult? Function(_UpdatePlan value)? updatePlan,
  }) {
    return fetchPlans?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_CreatePlan value)? createPlan,
    TResult Function(_UpdatePlan value)? updatePlan,
    required TResult orElse(),
  }) {
    if (fetchPlans != null) {
      return fetchPlans(this);
    }
    return orElse();
  }
}

abstract class _FetchPlans implements PlansEvent {
  const factory _FetchPlans() = _$FetchPlansImpl;
}

/// @nodoc
abstract class _$$CreatePlanImplCopyWith<$Res> {
  factory _$$CreatePlanImplCopyWith(
          _$CreatePlanImpl value, $Res Function(_$CreatePlanImpl) then) =
      __$$CreatePlanImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlansCreate plan});
}

/// @nodoc
class __$$CreatePlanImplCopyWithImpl<$Res>
    extends _$PlansEventCopyWithImpl<$Res, _$CreatePlanImpl>
    implements _$$CreatePlanImplCopyWith<$Res> {
  __$$CreatePlanImplCopyWithImpl(
      _$CreatePlanImpl _value, $Res Function(_$CreatePlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = null,
  }) {
    return _then(_$CreatePlanImpl(
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as PlansCreate,
    ));
  }
}

/// @nodoc

class _$CreatePlanImpl implements _CreatePlan {
  const _$CreatePlanImpl({required this.plan});

  @override
  final PlansCreate plan;

  @override
  String toString() {
    return 'PlansEvent.createPlan(plan: $plan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePlanImpl &&
            (identical(other.plan, plan) || other.plan == plan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePlanImplCopyWith<_$CreatePlanImpl> get copyWith =>
      __$$CreatePlanImplCopyWithImpl<_$CreatePlanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlans,
    required TResult Function(PlansCreate plan) createPlan,
    required TResult Function(PlansUpdate plan) updatePlan,
  }) {
    return createPlan(plan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlans,
    TResult? Function(PlansCreate plan)? createPlan,
    TResult? Function(PlansUpdate plan)? updatePlan,
  }) {
    return createPlan?.call(plan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlans,
    TResult Function(PlansCreate plan)? createPlan,
    TResult Function(PlansUpdate plan)? updatePlan,
    required TResult orElse(),
  }) {
    if (createPlan != null) {
      return createPlan(plan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_CreatePlan value) createPlan,
    required TResult Function(_UpdatePlan value) updatePlan,
  }) {
    return createPlan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_CreatePlan value)? createPlan,
    TResult? Function(_UpdatePlan value)? updatePlan,
  }) {
    return createPlan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_CreatePlan value)? createPlan,
    TResult Function(_UpdatePlan value)? updatePlan,
    required TResult orElse(),
  }) {
    if (createPlan != null) {
      return createPlan(this);
    }
    return orElse();
  }
}

abstract class _CreatePlan implements PlansEvent {
  const factory _CreatePlan({required final PlansCreate plan}) =
      _$CreatePlanImpl;

  PlansCreate get plan;
  @JsonKey(ignore: true)
  _$$CreatePlanImplCopyWith<_$CreatePlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePlanImplCopyWith<$Res> {
  factory _$$UpdatePlanImplCopyWith(
          _$UpdatePlanImpl value, $Res Function(_$UpdatePlanImpl) then) =
      __$$UpdatePlanImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PlansUpdate plan});
}

/// @nodoc
class __$$UpdatePlanImplCopyWithImpl<$Res>
    extends _$PlansEventCopyWithImpl<$Res, _$UpdatePlanImpl>
    implements _$$UpdatePlanImplCopyWith<$Res> {
  __$$UpdatePlanImplCopyWithImpl(
      _$UpdatePlanImpl _value, $Res Function(_$UpdatePlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plan = null,
  }) {
    return _then(_$UpdatePlanImpl(
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as PlansUpdate,
    ));
  }
}

/// @nodoc

class _$UpdatePlanImpl implements _UpdatePlan {
  const _$UpdatePlanImpl({required this.plan});

  @override
  final PlansUpdate plan;

  @override
  String toString() {
    return 'PlansEvent.updatePlan(plan: $plan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePlanImpl &&
            (identical(other.plan, plan) || other.plan == plan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, plan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePlanImplCopyWith<_$UpdatePlanImpl> get copyWith =>
      __$$UpdatePlanImplCopyWithImpl<_$UpdatePlanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPlans,
    required TResult Function(PlansCreate plan) createPlan,
    required TResult Function(PlansUpdate plan) updatePlan,
  }) {
    return updatePlan(plan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchPlans,
    TResult? Function(PlansCreate plan)? createPlan,
    TResult? Function(PlansUpdate plan)? updatePlan,
  }) {
    return updatePlan?.call(plan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPlans,
    TResult Function(PlansCreate plan)? createPlan,
    TResult Function(PlansUpdate plan)? updatePlan,
    required TResult orElse(),
  }) {
    if (updatePlan != null) {
      return updatePlan(plan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPlans value) fetchPlans,
    required TResult Function(_CreatePlan value) createPlan,
    required TResult Function(_UpdatePlan value) updatePlan,
  }) {
    return updatePlan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchPlans value)? fetchPlans,
    TResult? Function(_CreatePlan value)? createPlan,
    TResult? Function(_UpdatePlan value)? updatePlan,
  }) {
    return updatePlan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPlans value)? fetchPlans,
    TResult Function(_CreatePlan value)? createPlan,
    TResult Function(_UpdatePlan value)? updatePlan,
    required TResult orElse(),
  }) {
    if (updatePlan != null) {
      return updatePlan(this);
    }
    return orElse();
  }
}

abstract class _UpdatePlan implements PlansEvent {
  const factory _UpdatePlan({required final PlansUpdate plan}) =
      _$UpdatePlanImpl;

  PlansUpdate get plan;
  @JsonKey(ignore: true)
  _$$UpdatePlanImplCopyWith<_$UpdatePlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlansState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlansCreate> plans) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlansCreate> plans)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlansCreate> plans)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlansStateCopyWith<$Res> {
  factory $PlansStateCopyWith(
          PlansState value, $Res Function(PlansState) then) =
      _$PlansStateCopyWithImpl<$Res, PlansState>;
}

/// @nodoc
class _$PlansStateCopyWithImpl<$Res, $Val extends PlansState>
    implements $PlansStateCopyWith<$Res> {
  _$PlansStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PlansStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl() : super._();

  @override
  String toString() {
    return 'PlansState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlansCreate> plans) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlansCreate> plans)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlansCreate> plans)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends PlansState {
  const factory _Initial() = _$InitialImpl;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PlansStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl extends _Loading {
  const _$LoadingImpl() : super._();

  @override
  String toString() {
    return 'PlansState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlansCreate> plans) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlansCreate> plans)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlansCreate> plans)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends PlansState {
  const factory _Loading() = _$LoadingImpl;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PlansCreate> plans});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$PlansStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? plans = null,
  }) {
    return _then(_$LoadedImpl(
      plans: null == plans
          ? _value._plans
          : plans // ignore: cast_nullable_to_non_nullable
              as List<PlansCreate>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl extends _Loaded {
  const _$LoadedImpl({required final List<PlansCreate> plans})
      : _plans = plans,
        super._();

  final List<PlansCreate> _plans;
  @override
  List<PlansCreate> get plans {
    if (_plans is EqualUnmodifiableListView) return _plans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_plans);
  }

  @override
  String toString() {
    return 'PlansState.loaded(plans: $plans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._plans, _plans));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_plans));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlansCreate> plans) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(plans);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlansCreate> plans)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(plans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlansCreate> plans)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(plans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded extends PlansState {
  const factory _Loaded({required final List<PlansCreate> plans}) =
      _$LoadedImpl;
  const _Loaded._() : super._();

  List<PlansCreate> get plans;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PlansStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl extends _Error {
  const _$ErrorImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'PlansState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<PlansCreate> plans) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<PlansCreate> plans)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<PlansCreate> plans)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends PlansState {
  const factory _Error({required final String message}) = _$ErrorImpl;
  const _Error._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
