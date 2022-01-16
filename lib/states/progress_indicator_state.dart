import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podcasts/errors/audio_error.dart';
import 'package:podcasts/models/progress_indicator_content.dart';

part 'progress_indicator_state.freezed.dart';

@freezed
class ProgressIndicatorState with _$ProgressIndicatorState {
  const factory ProgressIndicatorState.content(ProgressIndicatorContent content, bool isHiding) = _Content;
  const factory ProgressIndicatorState.loading(ProgressIndicatorContent content, bool isHiding) = _Loading;
  const factory ProgressIndicatorState.failed(ProgressIndicatorContent content,bool isHiding, AudioError error) = _Failed;

  factory ProgressIndicatorState.initial() => ProgressIndicatorState.content(ProgressIndicatorContent.empty(), false);

}
