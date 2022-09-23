import 'package:flutter/material.dart';
import 'package:private_fit/presentation/components/elements/sliver_bar.dart';

/// This page is similar to `SimplePage`, in regards that it doesn't control state.
/// It holds a `SliverAppBar` and a plethera of others slivers inside.
class SliverPage extends StatelessWidget {
  const SliverPage({
    super.key,
    required this.title,
    required this.header,
    this.children,
    this.actions,
    this.popupMenu,
    this.controller,
  });
  final String title;
  final Widget header;
  final List<Widget>? children, actions;
  final Map<String, String>? popupMenu;
  final ScrollController? controller;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      key: PageStorageKey(title),
      controller: controller,
      slivers: <Widget>[
        SliverBar(
          title: title,
          header: header,
        ),
        ...children!,
      ],
    );
  }
}

/// Basic screen, which includes an [AppBar] widget.
/// Used when the desired page doesn't have slivers or reloading.
class SimplePage extends StatelessWidget {
  const SimplePage({
    super.key,
    required this.title,
    required this.body,
    this.fab,
    this.actions,
  });
  final String title;
  final Widget body;
  final Widget? fab;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          // style: GoogleFonts.rubik(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        actions: actions,
        elevation: 0,
      ),
      body: body,
      floatingActionButton: fab,
    );
  }
}
