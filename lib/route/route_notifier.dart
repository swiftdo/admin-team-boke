import 'package:hooks_riverpod/hooks_riverpod.dart';

class RouteNotifier extends StateNotifier<String?> {
  RouteNotifier() : super(null);

  set currentRoute(String? path) {
    state = path;
  }
}
