// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeeListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Employee> employees) employeesLoaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Employee> employees)? employeesLoaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Employee> employees)? employeesLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmployeeListState value) initial,
    required TResult Function(_EmployeeLoaded value) employeesLoaded,
    required TResult Function(_EmployeeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmployeeListState value)? initial,
    TResult? Function(_EmployeeLoaded value)? employeesLoaded,
    TResult? Function(_EmployeeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmployeeListState value)? initial,
    TResult Function(_EmployeeLoaded value)? employeesLoaded,
    TResult Function(_EmployeeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeListStateCopyWith<$Res> {
  factory $EmployeeListStateCopyWith(
          EmployeeListState value, $Res Function(EmployeeListState) then) =
      _$EmployeeListStateCopyWithImpl<$Res, EmployeeListState>;
}

/// @nodoc
class _$EmployeeListStateCopyWithImpl<$Res, $Val extends EmployeeListState>
    implements $EmployeeListStateCopyWith<$Res> {
  _$EmployeeListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmployeeListStateImplCopyWith<$Res> {
  factory _$$EmployeeListStateImplCopyWith(_$EmployeeListStateImpl value,
          $Res Function(_$EmployeeListStateImpl) then) =
      __$$EmployeeListStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmployeeListStateImplCopyWithImpl<$Res>
    extends _$EmployeeListStateCopyWithImpl<$Res, _$EmployeeListStateImpl>
    implements _$$EmployeeListStateImplCopyWith<$Res> {
  __$$EmployeeListStateImplCopyWithImpl(_$EmployeeListStateImpl _value,
      $Res Function(_$EmployeeListStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmployeeListStateImpl implements _EmployeeListState {
  const _$EmployeeListStateImpl();

  @override
  String toString() {
    return 'EmployeeListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmployeeListStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Employee> employees) employeesLoaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Employee> employees)? employeesLoaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Employee> employees)? employeesLoaded,
    TResult Function()? error,
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
    required TResult Function(_EmployeeListState value) initial,
    required TResult Function(_EmployeeLoaded value) employeesLoaded,
    required TResult Function(_EmployeeError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmployeeListState value)? initial,
    TResult? Function(_EmployeeLoaded value)? employeesLoaded,
    TResult? Function(_EmployeeError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmployeeListState value)? initial,
    TResult Function(_EmployeeLoaded value)? employeesLoaded,
    TResult Function(_EmployeeError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _EmployeeListState implements EmployeeListState {
  const factory _EmployeeListState() = _$EmployeeListStateImpl;
}

/// @nodoc
abstract class _$$EmployeeLoadedImplCopyWith<$Res> {
  factory _$$EmployeeLoadedImplCopyWith(_$EmployeeLoadedImpl value,
          $Res Function(_$EmployeeLoadedImpl) then) =
      __$$EmployeeLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Employee> employees});
}

/// @nodoc
class __$$EmployeeLoadedImplCopyWithImpl<$Res>
    extends _$EmployeeListStateCopyWithImpl<$Res, _$EmployeeLoadedImpl>
    implements _$$EmployeeLoadedImplCopyWith<$Res> {
  __$$EmployeeLoadedImplCopyWithImpl(
      _$EmployeeLoadedImpl _value, $Res Function(_$EmployeeLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
  }) {
    return _then(_$EmployeeLoadedImpl(
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
    ));
  }
}

/// @nodoc

class _$EmployeeLoadedImpl implements _EmployeeLoaded {
  const _$EmployeeLoadedImpl({required final List<Employee> employees})
      : _employees = employees;

  final List<Employee> _employees;
  @override
  List<Employee> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  String toString() {
    return 'EmployeeListState.employeesLoaded(employees: $employees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_employees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeLoadedImplCopyWith<_$EmployeeLoadedImpl> get copyWith =>
      __$$EmployeeLoadedImplCopyWithImpl<_$EmployeeLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Employee> employees) employeesLoaded,
    required TResult Function() error,
  }) {
    return employeesLoaded(employees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Employee> employees)? employeesLoaded,
    TResult? Function()? error,
  }) {
    return employeesLoaded?.call(employees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Employee> employees)? employeesLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (employeesLoaded != null) {
      return employeesLoaded(employees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmployeeListState value) initial,
    required TResult Function(_EmployeeLoaded value) employeesLoaded,
    required TResult Function(_EmployeeError value) error,
  }) {
    return employeesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmployeeListState value)? initial,
    TResult? Function(_EmployeeLoaded value)? employeesLoaded,
    TResult? Function(_EmployeeError value)? error,
  }) {
    return employeesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmployeeListState value)? initial,
    TResult Function(_EmployeeLoaded value)? employeesLoaded,
    TResult Function(_EmployeeError value)? error,
    required TResult orElse(),
  }) {
    if (employeesLoaded != null) {
      return employeesLoaded(this);
    }
    return orElse();
  }
}

abstract class _EmployeeLoaded implements EmployeeListState {
  const factory _EmployeeLoaded({required final List<Employee> employees}) =
      _$EmployeeLoadedImpl;

  List<Employee> get employees;
  @JsonKey(ignore: true)
  _$$EmployeeLoadedImplCopyWith<_$EmployeeLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmployeeErrorImplCopyWith<$Res> {
  factory _$$EmployeeErrorImplCopyWith(
          _$EmployeeErrorImpl value, $Res Function(_$EmployeeErrorImpl) then) =
      __$$EmployeeErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmployeeErrorImplCopyWithImpl<$Res>
    extends _$EmployeeListStateCopyWithImpl<$Res, _$EmployeeErrorImpl>
    implements _$$EmployeeErrorImplCopyWith<$Res> {
  __$$EmployeeErrorImplCopyWithImpl(
      _$EmployeeErrorImpl _value, $Res Function(_$EmployeeErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmployeeErrorImpl implements _EmployeeError {
  const _$EmployeeErrorImpl();

  @override
  String toString() {
    return 'EmployeeListState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmployeeErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Employee> employees) employeesLoaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Employee> employees)? employeesLoaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Employee> employees)? employeesLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmployeeListState value) initial,
    required TResult Function(_EmployeeLoaded value) employeesLoaded,
    required TResult Function(_EmployeeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmployeeListState value)? initial,
    TResult? Function(_EmployeeLoaded value)? employeesLoaded,
    TResult? Function(_EmployeeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmployeeListState value)? initial,
    TResult Function(_EmployeeLoaded value)? employeesLoaded,
    TResult Function(_EmployeeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _EmployeeError implements EmployeeListState {
  const factory _EmployeeError() = _$EmployeeErrorImpl;
}
