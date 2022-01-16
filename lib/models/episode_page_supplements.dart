import 'package:freezed_annotation/freezed_annotation.dart';
import '../source.dart';

part 'episode_page_supplements.freezed.dart';

@freezed
class EpisodePageSupplements with _$EpisodePageSupplements {
  const factory EpisodePageSupplements({
    @Default('') String activeId,
    @Default(SortStyles.oldestFirst) SortStyles sortStyle,
    ApiError? apiError,
    required IndicatorPlayerState playerState,
    required Episode episode,
    @Default([]) List<Episode> otherEpisodes,
    @Default(true) bool isLoadingOthers,
  }) = _EpisodePageSupplements;

  factory EpisodePageSupplements.empty() => EpisodePageSupplements(
      playerState: inactiveState, episode: Episode.empty());
}
