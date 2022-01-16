import 'package:podcasts/source.dart';

class AppListView extends StatefulWidget {
  const AppListView(
      {required this.header,
      required this.children,
      this.backArrowCallback,
      this.thresholdOffset,
      this.appBarColor,
      Key? key})
      : super(key: key);

  final String header;
  final List<Widget> children;
  final Color? appBarColor;
  final double? thresholdOffset;
  final VoidCallback? backArrowCallback;

  @override
  AppListViewState createState() => AppListViewState();
}

class AppListViewState extends State<AppListView> {
  final topOffsetNotifier = ValueNotifier<double>(0);
  static const thresholdOffset = 28.0;
  static final controller = ScrollController();

  static void refreshListView() => controller.jumpTo(0.0);

  _updateTopOffset(double topOffset) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      topOffsetNotifier.value = topOffset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: NotificationListener(
          onNotification: (ScrollNotification n) {
            _updateTopOffset(n.metrics.pixels - 45);
            return true;
          },
          child: ListView(
              controller: controller,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: widget.children),
        ));
  }

  _buildAppBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: ValueListenableBuilder<double>(
            valueListenable: topOffsetNotifier,
            builder: (context, topOffset, child) {
              topOffset < 0 ? topOffset = 0 : topOffset;
              if (topOffset > thresholdOffset) topOffset = thresholdOffset;
              return AppBar(
                elevation: topOffset >= thresholdOffset ? 3 : 0,
                backgroundColor:
                    widget.appBarColor ?? AppColors.backgroundColor,
                leading: AppIconButton(
                  onPressed:
                      widget.backArrowCallback ?? () => Navigator.pop(context),
                  icon: EvaIcons.arrowBackOutline,
                  spreadRadius: 22.dw,
                  iconSize: 26.dw,
                  iconColor: AppColors.secondaryColor,
                ),
                title: AppText(widget.header,
                    size: 18.w,
                    weight: FontWeight.bold,
                    alignment: TextAlign.start,
                    color:
                        Colors.black.withOpacity(topOffset / thresholdOffset)),
              );
            }));
  }
}
