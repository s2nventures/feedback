// ignore_for_file: public_member_api_docs

import 'package:feedback/src/theme/feedback_theme.dart';
import 'package:feedback/src/utilities/media_query_from_window.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeedbackApp extends StatelessWidget {
  const FeedbackApp({
    Key? key,
    required this.child,
    this.data,
  }) : super(key: key);

  final Widget child;
  final FeedbackThemeData? data;

  @override
  Widget build(BuildContext context) {
    return MediaQueryFromWindow(
      child: FeedbackTheme(
        data: data ?? FeedbackThemeData(),
        child: child,
      ),
    );
  }
}
