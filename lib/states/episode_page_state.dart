import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podcasts/models/models_source.dart';

part 'episode_page_state.freezed.dart';

@freezed
class EpisodePageState with _$EpisodePageState {
  const factory EpisodePageState.loading(EpisodePageSupplements supplements) = _Loading;
  const factory EpisodePageState.content(EpisodePageSupplements supplements) = _Content;

  factory EpisodePageState.initial() =>  EpisodePageState.content(EpisodePageSupplements.empty());
}
