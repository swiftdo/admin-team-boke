import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'side_bar_item.freezed.dart';

@freezed
class SideBarItem with _$SideBarItem {
  const factory SideBarItem({
    required String label,
    IconData? icon,
    PageRouteInfo? routeInfo,
    List<SideBarItem>? child,
  }) = _SideBarItem;
}
