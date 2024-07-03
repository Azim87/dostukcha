// // ignore_for_file: no_logic_in_create_state
// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
// import 'package:rxdart/rxdart.dart';
//
// class PaginationView<T> extends StatefulWidget {
//   const PaginationView({
//     super.key,
//     this.firstPageKey = 1,
//     this.currentPageKey,
//     this.separator,
//     required this.futureFactory,
//     required this.itemBuilder,
//     this.shrinkWrap = false,
//     this.physics,
//     this.padding,
//   });
//
//   final int firstPageKey;
//   final int? currentPageKey;
//   final Widget? separator;
//   final Future<List<T>> Function(int index) futureFactory;
//   final ItemWidgetBuilder<T> itemBuilder;
//   final bool shrinkWrap;
//   final ScrollPhysics? physics;
//   final EdgeInsets? padding;
//
//   @override
//   PaginationViewState<T> createState() =>
//       PaginationViewState<T>(firstPageKey: firstPageKey);
// }
//
// class PaginationViewState<T> extends State<PaginationView<T>> {
//   PaginationViewState({required this.firstPageKey});
//
//   final int firstPageKey;
//   PagingController<int, T>? _pagingController;
//   StreamController<int>? _streamController;
//   StreamSubscription<void>? _subscription;
//
//   @override
//   void initState() {
//     _pagingController = PagingController(firstPageKey: firstPageKey);
//     _pagingController?.addPageRequestListener(
//       (pageKey) => _streamController?.sink.add(pageKey),
//     );
//     _streamController = StreamController<int>();
//     _subscription = _streamController?.stream
//         .throttleTime(
//           const Duration(seconds: 1),
//           trailing: true,
//           leading: false,
//         )
//         .asyncMap(_fetchPage)
//         .listen(null);
//     super.initState();
//   }
//
//   void remove(T it) {
//     final newList = [...?_pagingController?.itemList];
//     newList.remove(it);
//     _pagingController?.itemList = newList;
//   }
//
//   Future<void> _fetchPage(int pageKey) async {
//     try {
//       final newItems = await widget.futureFactory(pageKey);
//       if (newItems.isNotEmpty) {
//         _pagingController?.appendPage(newItems, pageKey + 1);
//       } else {
//         _pagingController?.appendLastPage(newItems);
//       }
//     } catch (e) {
//       _pagingController?.error = e;
//     }
//   }
//
//   @override
//   void didUpdateWidget(covariant PaginationView<T> oldWidget) {
//     super.didUpdateWidget(oldWidget);
//
//     if (widget.currentPageKey == 0) {
//       _pagingController?.refresh();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) => _buildPaged();
//
//   Widget _buildPaged() => RefreshIndicator(
//         onRefresh: () async => _pagingController?.refresh(),
//         child: PagedListView<int, T>.separated(
//           pagingController: _pagingController!,
//           separatorBuilder: (_, __) => widget.separator ?? Container(),
//           padding: widget.padding,
//           builderDelegate: PagedChildBuilderDelegate<T>(
//             itemBuilder: widget.itemBuilder,
//           ),
//           shrinkWrap: widget.shrinkWrap,
//           physics: widget.physics,
//         ),
//       );
//
//   @override
//   void dispose() {
//     _subscription?.cancel();
//     _streamController?.close();
//     _pagingController?.dispose();
//     super.dispose();
//   }
// }
