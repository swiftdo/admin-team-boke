import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  double get sw {
    return MediaQuery.of(this).size.width;
  }

  double get sh {
    return MediaQuery.of(this).size.height;
  }

  double get safeTop {
    return MediaQuery.of(this).padding.top;
  }

  double get safeBottom {
    return MediaQuery.of(this).padding.bottom;
  }
}
