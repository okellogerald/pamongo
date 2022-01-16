import '../source.dart';

class EpisodePageBloc extends Cubit<EpisodePageState> {
  final AudioPlayerService service;

  EpisodePageBloc(this.service) : super(EpisodePageState.initial()) {
    service.onIndicatorContentStateChanged.listen((content) {
      _handleContentStream(content);
    });
  }

  Future<void> init({Episode? episode, episodeId = ''}) async {
    var supp = state.supplements;
    emit(EpisodePageState.loading(supp));

    final content = service.getCurrentContent;
    final id = content.getCurrentEpisode.id;
    final playerState = content.playerState;

    final _episode =
        episode ?? await PodcastsRepository.getEpisodeById(episodeId);

    supp = supp.copyWith(
        activeId: id,
        playerState: playerState,
        episode: _episode,
        isLoadingOthers: true);
    emit(EpisodePageState.content(supp));

    final series = await PodcastsRepository.getSeriesById(_episode.seriesId);
    final otherEpisodes = series.episodeList;
    otherEpisodes.removeWhere((e) => e.id == _episode.id);
    otherEpisodes.sort((a, b) => a.episodeNumber.compareTo(b.episodeNumber));

    supp = supp.copyWith(
      activeId: id,
      playerState: playerState,
      episode: _episode,
      isLoadingOthers: false,
      otherEpisodes: otherEpisodes,
    );
    emit(EpisodePageState.content(supp));
  }

  void play({Episode? episode}) async =>
      await service.play([episode ?? state.supplements.episode]);

  void togglePlayerStatus() async => await service.toggleStatus();

  void markAsPlayed(String id) => service.removeFromBox(id);

  void share(String id) async => await service.share(ContentType.episode, id);

  _handleContentStream(ProgressIndicatorContent content) async {
    var supp = state.supplements;
    emit(EpisodePageState.loading(supp));

    final content = service.getCurrentContent;
    final id = content.episodeList[content.currentIndex].id;
    final playerState = content.playerState;

    supp = supp.copyWith(activeId: id, playerState: playerState);
    emit(EpisodePageState.content(supp));
  }
}
