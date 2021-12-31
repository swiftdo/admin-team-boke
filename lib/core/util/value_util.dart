import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:convert/convert.dart';

class ValueUtil {
  /// http header 只能是 ascii 的值
  static bool isAscii(String str) {
    return RegExp(r'^[\x00-\x7F]+$').hasMatch(str);
  }

  static bool isEmail(String? input) {
    String regexEmail =
        "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}\$";
    if (input == null || input.isEmpty) return false;
    return RegExp(regexEmail).hasMatch(input);
  }

  static bool isUrl(String str) {
    return str.startsWith('http');
  }

  static String enumToString(o) => o.toString().split('.').last;

  static T enumFromString<T>(List<T> values, String value) {
    int index = values
        .toList()
        .indexWhere((element) => element.toString().split('.').last == value);
    if (index >= 0) {
      return values.toList()[index];
    } else {
      return values.first;
    }
  }

  static T asT<T>(dynamic value, {defaultValue}) {
    if (value is T) {
      return value;
    }
    if (value != null) {
      final String valueS = value.toString();
      if (0 is T) {
        return int.tryParse(valueS) as T;
      } else if (0.0 is T) {
        return double.tryParse(valueS) as T;
      } else if ('' is T) {
        return valueS as T;
      } else if (false is T) {
        if (valueS == '0' || valueS == '1') {
          return (valueS == '1') as T;
        }
        return bool.fromEnvironment(value.toString()) as T;
      }
    } else {
      if (defaultValue != null && (defaultValue is T)) {
        return defaultValue;
      }
    }
    return ValueUtil.getDefault<T>();
  }

  ///取指定类型默认值
  static T getDefault<T>() {
    if (0 is T) {
      return 0 as T;
    } else if (0.0 is T) {
      return 0.0 as T;
    } else if ('' is T) {
      return '' as T;
    } else if (false is T) {
      return false as T;
    } else if ([] is T) {
      return [] as T;
    } else if ({} is T) {
      return {} as T;
    } else {
      return Object() as T;
    }
  }

  static String getMd5(String value) {
    var content = const Utf8Encoder().convert(value);
    var digest = md5.convert(content);
    // 这里其实就是 digest.toString()
    return hex.encode(digest.bytes);
  }

  static int toInt(dynamic value) {
    if (value is String) {
      if (value.isNotEmpty) {
        return int.parse(value);
      } else {
        return 0;
      }
    } else if (value is num) {
      return value.toInt();
    } else {
      return 0;
    }
  }

  static double toDouble(dynamic value) {
    if (value is String) {
      if (value.isNotEmpty) {
        return double.parse(value);
      } else {
        return 0.0;
      }
    } else if (value is num) {
      return value.toDouble();
    } else {
      return 0.0;
    }
  }

  static String toStr(dynamic value, {String def = ''}) {
    if (value is String) {
      return value;
    } else if (value is num) {
      return value.toString();
    } else {
      return def;
    }
  }

  static List toList(dynamic value) {
    if (value is List) {
      return value;
    } else {
      return [];
    }
  }

  static List toPhotos(dynamic value) {
    if (value is String) {
      return [value];
    } else if (value is List) {
      return value;
    } else {
      return [];
    }
  }

  static Map<String, dynamic> toMap(dynamic value) {
    if (value is Map) {
      return Map<String, dynamic>.from(value);
    } else {
      return {};
    }
  }

  static num toNum(dynamic value) {
    if (value is num) {
      return value;
    } else if (value is String) {
      if (value.contains(".")) {
        return double.parse(value);
      } else {
        return int.parse(value);
      }
    } else {
      return -666;
    }
  }

  static bool toBool(dynamic value) {
    if (value is bool) {
      return value;
    } else if (value is String) {
      if (value.isEmpty) return false;
      if (value == 'true') return true;
      if (value == 'false') return false;
      return toNum(value) > 0;
    } else if (value is num) {
      return value > 0;
    } else {
      return false;
    }
  }
}
