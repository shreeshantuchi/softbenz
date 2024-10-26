import 'package:flutter/material.dart';
import 'package:product_detail/core/constants/colors.dart';
import 'package:product_detail/core/extenstion/string_extenstion.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int maxLines;

  const ExpandableText({required this.text, this.maxLines = 3, Key? key})
      : super(key: key);

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late ValueNotifier<bool> isExpandedNotifier;

  @override
  void initState() {
    super.initState();
    isExpandedNotifier = ValueNotifier<bool>(false);
  }

  @override
  void dispose() {
    isExpandedNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> bulletPoints = widget.text.decodeHtmlWithBullets();

    return ValueListenableBuilder<bool>(
      valueListenable: isExpandedNotifier,
      builder: (context, isExpanded, child) {
        int displayLines = isExpanded ? bulletPoints.length : widget.maxLines;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...bulletPoints
                .take(displayLines)
                .map((point) => Text(
                      point,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .copyWith(color: Colors.black45),
                    ))
                .toList(),
            if (bulletPoints.length > widget.maxLines)
              GestureDetector(
                onTap: () {
                  isExpandedNotifier.value = !isExpandedNotifier.value;
                },
                child: Text(
                  isExpanded ? 'See less' : 'See more',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
          ],
        );
      },
    );
  }
}
