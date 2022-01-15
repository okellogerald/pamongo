import '../source.dart';

class AppText extends StatefulWidget {
  const AppText(this.data,
      {this.weight = FontWeight.w400,
      required this.size,
      this.color = AppColors.textColor,
      this.alignment = TextAlign.justify,
      this.family = kFontFam,
      this.cutFrom = 0,
      this.maxLines,
      this.height,
      this.letterSpacing,
      key})
      : super(key: key);

  final int size, cutFrom;
  final int? maxLines;
  final FontWeight weight;
  final String data, family;
  final Color color;
  final TextAlign alignment;
  final double? height, letterSpacing;

  TextStyle style() {
    return TextStyle(
        fontWeight: weight,
        fontSize: size.toDouble(),
        color: color,
        height: height,
        fontFamily: family,
        letterSpacing: letterSpacing,
        overflow: TextOverflow.ellipsis);
  }

  TextSpan toTextSpan() {
    return TextSpan(text: data, style: style());
  }

  @override
  State<AppText> createState() => _AppTextState();
}

class _AppTextState extends State<AppText> {
  @override
  Widget build(BuildContext context) {
    final data = widget.cutFrom == 0 || widget.data.length < widget.cutFrom
        ? widget.data
        : widget.data.substring(0, widget.cutFrom) + ' ...';

    return Text(data,
        textAlign: widget.alignment,
        maxLines: widget.maxLines,
        style: widget.style());
  }
}
