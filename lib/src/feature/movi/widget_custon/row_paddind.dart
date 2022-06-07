import 'package:flutter/material.dart';
import 'package:movi/src/feature/movi/widget_custon/padding_text.dart';

class RowColum extends StatelessWidget {
  final String label, label1;
  const RowColum({
    Key? key,
    required this.label,
    required this.label1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PaddingText(
          movie: label,
          left: 15,
          right: 0,
          botton: 5,
          style: Theme.of(context).textTheme.headline6!,
        ),
        PaddingText(
          movie: label1,
          left: 15,
          right: 0,
          botton: 5,
          style: Theme.of(context).textTheme.headline2!,
        ),
      ],
    );
  }
}
