// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'progress_indicator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProgressIndicatorStateTearOff {
  const _$ProgressIndicatorStateTearOff();

  _Content content(ProgressIndicatorContent content, bool isHiding) {
    return _Content(
      content,
      isHiding,
    );
  }

  _Loading loading(ProgressIndicatorContent content, bool isHiding) {
    return _Loading(
      content,
      isHiding,
    );
  }

  _Failed failed(
      ProgressIndicatorContent content, bool isHiding, AudioError error) {
    return _Failed(
      content,
      isHiding,
      error,
    );
  }
}

/// @nodoc
const $ProgressIndicatorState = _$ProgressIndicatorStateTearOff();

/// @nodoc
mixin _$ProgressIndicatorState {
  ProgressIndicatorContent get content => throw _privateConstructorUsedError;
  bool get isHiding => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProgressIndicatorContent content, bool isHiding)
        content,
    required TResult Function(ProgressIndicatorContent content, bool isHiding)
        loading,
    required TResult Function(
            ProgressIndicatorContent content, bool isHiding, AudioError error)
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProgressIndicatorContent content, bool isHiding)? content,
    TResult Function(ProgressIndicatorContent content, bool isHiding)? loading,
    TResult Function(
            ProgressIndicatorContent content, bool isHiding, AudioError error)?
        failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProgressIndicatorContent content, bool isHiding)? content,
    TResult Function(ProgressIndicatorContent content, bool isHiding)? loading,
    TResult Function(
            ProgressIndicatorContent content, bool isHiding, AudioError error)?
        failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Content value) content,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgressIndicatorStateCopyWith<ProgressIndicatorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressIndicatorStateCopyWith<$Res> {
  factory $ProgressIndicatorStateCopyWith(ProgressIndicatorState value,
          $Res Function(ProgressIndicatorState) then) =
      _$ProgressIndicatorStateCopyWithImpl<$Res>;
  $Res call({ProgressIndicatorContent content, bool isHiding});

  $ProgressIndicatorContentCopyWith<$Res> get content;
}

/// @nodoc
class _$ProgressIndicatorStateCopyWithImpl<$Res>
    implements $ProgressIndicatorStateCopyWith<$Res> {
  _$ProgressIndicatorStateCopyWithImpl(this._value, this._then);

  final ProgressIndicatorState _value;
  // ignore: unused_field
  final $Res Function(ProgressIndicatorState) _then;

  @override
  $Res call({
    Object? content = freezed,
    Object? isHiding = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ProgressIndicatorContent,
      isHiding: isHiding == freezed
          ? _value.isHiding
          : isHiding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ProgressIndicatorContentCopyWith<$Res> get content {
    return $ProgressIndicatorContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc
abstract class _$ContentCopyWith<$Res>
    implements $ProgressIndicatorStateCopyWith<$Res> {
  factory _$ContentCopyWith(_Content value, $Res Function(_Content) then) =
      __$ContentCopyWithImpl<$Res>;
  @override
  $Res call({ProgressIndicatorContent content, bool isHiding});

  @override
  $ProgressIndicatorContentCopyWith<$Res> get content;
}

/// @nodoc
class __$ContentCopyWithImpl<$Res>
    extends _$ProgressIndicatorStateCopyWithImpl<$Res>
    implements _$ContentCopyWith<$Res> {
  __$ContentCopyWithImpl(_Content _value, $Res Function(_Content) _then)
      : super(_value, (v) => _then(v as _Content));

  @override
  _Content get _value => super._value as _Content;

  @override
  $Res call({
    Object? content = freezed,
    Object? isHiding = freezed,
  }) {
    return _then(_Content(
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ProgressIndicatorContent,
      isHiding == freezed
          ? _value.isHiding
          : isHiding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Content implements _Content {
  const _$_Content(this.content, this.isHiding);

  @override
  final ProgressIndicatorContent content;
  @override
  final bool isHiding;

  @override
  String toString() {
    return 'ProgressIndicatorState.content(content: $content, isHiding: $isHiding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Content &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.isHiding, isHiding));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(isHiding));

  @JsonKey(ignore: true)
  @override
  _$ContentCopyWith<_Content> get copyWith =>
      __$ContentCopyWithImpl<_Content>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProgressIndicatorContent content, bool isHiding)
        content,
    required TResult Function(ProgressIndicatorContent content, bool isHiding)
        loading,
    required TResult Function(
            ProgressIndicatorContent content, bool isHiding, AudioError error)
        failed,
  }) {
    return content(this.content, isHiding);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProgressIndicatorContent content, bool isHiding)? content,
    TResult Function(ProgressIndicatorContent content, bool isHiding)? loading,
    TResult Function(
            ProgressIndicatorContent content, bool isHiding, AudioError error)?
        failed,
  }) {
    return content?.call(this.content, isHiding);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProgressIndicatorContent content, bool isHiding)? content,
    TResult Function(ProgressIndicatorContent content, bool isHiding)? loading,
    TResult Function(
            ProgressIndicatorContent content, bool isHiding, AudioError error)?
        failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this.content, isHiding);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Content value) content,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failed value) failed,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _Content implements ProgressIndicatorState {
  const factory _Content(ProgressIndicatorContent content, bool isHiding) =
      _$_Content;

  @override
  ProgressIndicatorContent get content;
  @override
  bool get isHiding;
  @override
  @JsonKey(ignore: true)
  _$ContentCopyWith<_Content> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res>
    implements $ProgressIndicatorStateCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({ProgressIndicatorContent content, bool isHiding});

  @override
  $ProgressIndicatorContentCopyWith<$Res> get content;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$ProgressIndicatorStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;

  @override
  $Res call({
    Object? content = freezed,
    Object? isHiding = freezed,
  }) {
    return _then(_Loading(
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ProgressIndicatorContent,
      isHiding == freezed
          ? _value.isHiding
          : isHiding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading(this.content, this.isHiding);

  @override
  final ProgressIndicatorContent content;
  @override
  final bool isHiding;

  @override
  String toString() {
    return 'ProgressIndicatorState.loading(content: $content, isHiding: $isHiding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loading &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.isHiding, isHiding));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(isHiding));

  @JsonKey(ignore: true)
  @override
  _$LoadingCopyWith<_Loading> get copyWith =>
      __$LoadingCopyWithImpl<_Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProgressIndicatorContent content, bool isHiding)
        content,
    required TResult Function(ProgressIndicatorContent content, bool isHiding)
        loading,
    required TResult Function(
            ProgressIndicatorContent content, bool isHiding, AudioError error)
        failed,
  }) {
    return loading(this.content, isHiding);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProgressIndicatorContent content, bool isHiding)? content,
    TResult Function(ProgressIndicatorContent content, bool isHiding)? loading,
    TResult Function(
            ProgressIndicatorContent content, bool isHiding, AudioError error)?
        failed,
  }) {
    return loading?.call(this.content, isHiding);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProgressIndicatorContent content, bool isHiding)? content,
    TResult Function(ProgressIndicatorContent content, bool isHiding)? loading,
    TResult Function(
            ProgressIndicatorContent content, bool isHiding, AudioError error)?
        failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this.content, isHiding);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Content value) content,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProgressIndicatorState {
  const factory _Loading(ProgressIndicatorContent content, bool isHiding) =
      _$_Loading;

  @override
  ProgressIndicatorContent get content;
  @override
  bool get isHiding;
  @override
  @JsonKey(ignore: true)
  _$LoadingCopyWith<_Loading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res>
    implements $ProgressIndicatorStateCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  @override
  $Res call(
      {ProgressIndicatorContent content, bool isHiding, AudioError error});

  @override
  $ProgressIndicatorContentCopyWith<$Res> get content;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res>
    extends _$ProgressIndicatorStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object? content = freezed,
    Object? isHiding = freezed,
    Object? error = freezed,
  }) {
    return _then(_Failed(
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ProgressIndicatorContent,
      isHiding == freezed
          ? _value.isHiding
          : isHiding // ignore: cast_nullable_to_non_nullable
              as bool,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AudioError,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.content, this.isHiding, this.error);

  @override
  final ProgressIndicatorContent content;
  @override
  final bool isHiding;
  @override
  final AudioError error;

  @override
  String toString() {
    return 'ProgressIndicatorState.failed(content: $content, isHiding: $isHiding, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failed &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.isHiding, isHiding) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(isHiding),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ProgressIndicatorContent content, bool isHiding)
        content,
    required TResult Function(ProgressIndicatorContent content, bool isHiding)
        loading,
    required TResult Function(
            ProgressIndicatorContent content, bool isHiding, AudioError error)
        failed,
  }) {
    return failed(this.content, isHiding, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ProgressIndicatorContent content, bool isHiding)? content,
    TResult Function(ProgressIndicatorContent content, bool isHiding)? loading,
    TResult Function(
            ProgressIndicatorContent content, bool isHiding, AudioError error)?
        failed,
  }) {
    return failed?.call(this.content, isHiding, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ProgressIndicatorContent content, bool isHiding)? content,
    TResult Function(ProgressIndicatorContent content, bool isHiding)? loading,
    TResult Function(
            ProgressIndicatorContent content, bool isHiding, AudioError error)?
        failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this.content, isHiding, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Content value) content,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Content value)? content,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements ProgressIndicatorState {
  const factory _Failed(
          ProgressIndicatorContent content, bool isHiding, AudioError error) =
      _$_Failed;

  @override
  ProgressIndicatorContent get content;
  @override
  bool get isHiding;
  AudioError get error;
  @override
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}
