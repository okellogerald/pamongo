import 'dart:async';
import 'package:podcasts/widgets/series_page_episode_tile.dart';
import '../source.dart';

class EpisodePage extends StatefulWidget {
  const EpisodePage({this.episode, this.id, key}) : super(key: key);

  final Episode? episode;
  final String? id;

  static void navigateTo(BuildContext context, Episode episode) =>
      Navigator.of(context).push(
          CupertinoPageRoute(builder: (_) => EpisodePage(episode: episode)));

  @override
  State<EpisodePage> createState() => _EpisodePageState();
}

class _EpisodePageState extends State<EpisodePage> {
  late final EpisodePageBloc bloc;
  late final AudioPlayerService service;

  @override
  void initState() {
    service = Provider.of<AudioPlayerService>(context, listen: false);
    bloc = EpisodePageBloc(service);
    bloc.init(episode: widget.episode, episodeId: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _handlePop,
      child: _buildBody(),
    );
  }

  _buildBody() {
    return BlocBuilder<EpisodePageBloc, EpisodePageState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(loading: _buildLoading, content: _buildContent);
        });
  }

  Widget _buildContent(EpisodePageSupplements supp) {
    final shouldLeaveSpace = !supp.playerState.isInactive;
    final episode = supp.episode;
    final isOpenedUsingLink = widget.episode == null;

    return AppListView(
      header: episode.title,
      backArrowCallback:
          isOpenedUsingLink ? () => Homepage.navigateTo(context) : null,
      children: [
        PageEpisodeTile(
          page: Pages.episodePage,
          episode: episode,
          activeId: supp.activeId,
          playerState: supp.playerState,
          resumeCallback: bloc.togglePlayerStatus,
          playCallback: bloc.play,
          markAsDoneCallback: bloc.markAsPlayed,
          shareCallback: bloc.share,
        ),
        _buildOtherEpisodes(supp),
        shouldLeaveSpace ? SizedBox(height: 70.dh) : SizedBox(height: 10.dh)
      ],
    );
  }

  Widget _buildLoading(EpisodePageSupplements supplements) =>
      const AppLoadingIndicator();

  _buildOtherEpisodes(EpisodePageSupplements supp) {
    if (supp.isLoadingOthers) return const AppLoadingIndicator();
    if (supp.otherEpisodes.isEmpty) return Container();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 1.5.dw,
          color: AppColors.dividerColor,
          margin: EdgeInsets.only(bottom: 15.dh),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.dw, right: 6.dw),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                'Other ${supp.otherEpisodes.length == 1 ? 'episode' : 'episodes'} in :',
                size: 14.w,
                color: AppColors.accentColor,
                weight: FontWeight.w600,
                alignment: TextAlign.start,
              ),
              SizedBox(height: 5.dh),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: AppText(
                      '${supp.episode.seriesName}.',
                      size: 20.w,
                      color: AppColors.textColor2,
                      weight: FontWeight.w600,
                      alignment: TextAlign.start,
                      maxLines: 3,
                    ),
                  ),
                  SizedBox(width: 15.dw),
                  supp.otherEpisodes.length == 1
                      ? Container()
                      : SortButton(
                          sortStyle: supp.sortStyle,
                          onSelectedCallback: bloc.toggleSortStyle,
                        ),
                ],
              ),
            ],
          ),
        ),
        _buildEpisodes(supp),
      ],
    );
  }

  _buildEpisodes(EpisodePageSupplements supp) {
    return ListView.builder(
      itemCount: supp.otherEpisodes.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (_, index) {
        final episode = supp.otherEpisodes[index];
        final isFirst = index == 0;
        return AppMaterialButton(
          onPressed: () {
            AppListViewState.refreshListView();
            bloc.init(episode: episode);
          },
          child: Container(
            decoration: BoxDecoration(
                border: Border(
                    top: isFirst
                        ? const BorderSide(width: 0, color: Colors.transparent)
                        : BorderSide(
                            width: 1.5.dw, color: AppColors.dividerColor))),
            child: SeriesPageEpisodeTile(
              episode: episode,
              playCallback: (_) => bloc.play(episode: episode),
              markAsDoneCallback: bloc.markAsPlayed,
              shareCallback: bloc.share,
              playerState: supp.playerState,
              activeId: supp.activeId,
              index: 0,
              resumeCallback: bloc.togglePlayerStatus,
            ),
          ),
        );
      },
    );
  }

  /// pushes to homepage if app is opened using the link, otherwise normal
  /// behaviour applies.
  Future<bool> _handlePop() async {
    final isOpenedUsingLink = widget.episode == null;
    if (isOpenedUsingLink) Homepage.navigateTo(context);
    return true;
  }
}
