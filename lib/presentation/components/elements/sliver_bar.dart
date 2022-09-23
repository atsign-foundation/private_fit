import 'package:cherry_components/cherry_components.dart';
import 'package:flutter/material.dart';

/// Custom sliver app bar used in Sliver views.
/// It collapses when user scrolls down.
class SliverBar extends StatelessWidget {
  const SliverBar({
    super.key,
    required this.title,
    required this.header,
    this.height = heightRatio,
    this.actions,
    // required this.menuItemBuilder,
    this.onMenuItemSelected,
  });
  static const double heightRatio = 0.3;

  final String title;
  final Widget header;
  final num height;
  final List<Widget>? actions;
  // final PopupMenuItemBuilder<String> menuItemBuilder;
  final PopupMenuItemSelected<String>? onMenuItemSelected;

  @override
  Widget build(BuildContext context) {
    final parentRoute = ModalRoute.of(context);
    final useCloseButton =
        parentRoute is PageRoute<dynamic> && parentRoute.fullscreenDialog;

    return SliverAppBar(
      stretch: true,
      expandedHeight: MediaQuery.of(context).size.height * height,
      leading: Navigator.of(context).canPop()
          ? useCloseButton
              ? IconButton(
                  icon: const IconShadow(Icons.close),
                  tooltip: MaterialLocalizations.of(context).closeButtonTooltip,
                  onPressed: () => Navigator.of(context).pop(),
                )
              : IconButton(
                  icon: IconShadow(Icons.adaptive.arrow_back),
                  tooltip: MaterialLocalizations.of(context).backButtonTooltip,
                  onPressed: () => Navigator.of(context).pop(),
                )
          : null,
      actions: const [
        // ...actions!,
        // if (onMenuItemSelected != null)
        //   PopupMenuButton<String>(
        //     itemBuilder: menuItemBuilder,
        //     onSelected: onMenuItemSelected,
        //     icon: IconShadow(Icons.adaptive.more),
        //   ),
      ],
      pinned: true,
      elevation: 0,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [
          StretchMode.zoomBackground,
          StretchMode.blurBackground,
          StretchMode.fadeTitle
        ],
        centerTitle: true,
        // Using title constraining, because Flutter doesn't do this automatically.
        // Open issue: [https://github.com/flutter/flutter/issues/14227]
        title: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.55,
          ),
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            maxLines: 1,
            // style: GoogleFonts.rubik(
            //   fontWeight: FontWeight.w600,
            //   shadows: [
            //     Shadow(
            //       blurRadius: 4,
            //       color: Theme.of(context).primaryColor,
            //     ),
            //   ],
            // ),
          ),
        ),
        background: header,
      ),
    );
  }
}
