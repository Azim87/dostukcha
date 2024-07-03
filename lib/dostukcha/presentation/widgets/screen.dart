import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/util/palette.dart';

class Screen extends StatelessWidget {
  const Screen({
    super.key,
    this.systemUiOverlayStyle = SystemUiOverlayStyle.light,
    this.showAppBar = false,
    this.willPop,
    this.onTap,
    this.centerTitle = false,
    this.actions,
    this.widgetTitle,
    this.title,
    this.padding = EdgeInsets.zero,
    required this.body,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.leading,
  });

  final SystemUiOverlayStyle systemUiOverlayStyle;
  final Widget body;
  final bool showAppBar;
  final WillPopCallback? willPop;
  final GestureTapCallback? onTap;
  final bool centerTitle;
  final List<Widget>? actions;
  final Widget? widgetTitle;
  final String? title;
  final EdgeInsets padding;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final Widget? leading;

  @override
  Widget build(BuildContext context) => AnnotatedRegion<SystemUiOverlayStyle>(
        value: systemUiOverlayStyle,
        child: WillPopScope(
          onWillPop: willPop,
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
              onTap?.call();
            },
            child: Scaffold(
              backgroundColor: Palette.white,
              bottomNavigationBar: bottomNavigationBar,
              floatingActionButton: floatingActionButton,
              floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
              appBar: showAppBar == true
                  ? AppBar(
                      leading: leading,
                      centerTitle: centerTitle,
                      actions: actions,
                      title: widgetTitle ?? Text(title ?? ''),
                      backgroundColor: Palette.white,
                      elevation: 0,
                    )
                  : null,
              body: Padding(
                padding: padding,
                child: SafeArea(child: body),
              ),
            ),
          ),
        ),
      );
}
