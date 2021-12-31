import 'package:admin_team_boke/core/util/value_util.dart';
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

extension ObjectExt on Object {
  Map<String, dynamic> get toMap {
    return ValueUtil.toMap(this);
  }

  String get toStr {
    return ValueUtil.toStr(this);
  }

  double get toDouble {
    return ValueUtil.toDouble(this);
  }

  int get toInt {
    return ValueUtil.toInt(this);
  }

  List get toList {
    return ValueUtil.toList(this);
  }
}
