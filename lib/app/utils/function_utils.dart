import 'dart:developer' as dev;
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void logKey([key, content]) {
  String finalLog = '';
  dynamic tempContent = content ?? key;
  // if (!isDev) {
  //   return;
  // }
  if (tempContent is Map || tempContent is List) {
    try {
      finalLog = json.encode(tempContent);
    } catch (e) {
      finalLog = tempContent.toString();
    }
  } else if (tempContent is String) {
    finalLog = tempContent;
  } else {
    finalLog = tempContent.toString();
  }

  if (content != null) {
    dev.log('$key => $finalLog');
  } else {
    dev.log(finalLog);
  }
}

String formatNumber(int number) {
  String numberString = number.toString();
  if (numberString.length <= 3) {
    return numberString;
  }
  String result = '';
  int count = 0;
  for (int i = numberString.length - 1; i >= 0; i--) {
    result = numberString[i] + result;
    count++;
    if (count == 3 && i > 0) {
      result = ',$result';
      count = 0;
    }
  }
  return result;
}

double doubleParse(args) {
  try {
    if (args is double) {
      return args;
    } else if (args is String) {
      return double.parse(args);
    } else {
      return double.parse(args.toString());
    }
  } catch (e) {
    return 0;
  }
}

String currencyFormat(dynamic number) {
  try {
    if (number is String) {
      number = number.replaceAll(',', '');
      return NumberFormat("#,##0", "en_US").format(doubleParse(number));
    }
    if (number is double || number is int) {
      return NumberFormat("#,##0", "en_US").format(number);
    }
    return '-';
  } catch (e) {
    logKey('Error currencyFormat', e);
    return '-';
  }
}

class CurrencyInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) {
      return newValue;
    }

    double value = double.parse(newValue.text);

    final formatter = NumberFormat.decimalPattern('en_US');

    String newText = formatter.format(value);

    return newValue.copyWith(text: newText, selection: TextSelection.collapsed(offset: newText.length));
  }
}

bool isEmpty(dynamic val) {
  return [
    "",
    " ",
    null,
    'null',
    '{}',
    '[]',
    '0',
    '0.0',
    '-1',
  ].contains(val.toString());
}

bool isNotEmpty(dynamic val) {
  return ![
    "",
    " ",
    null,
    'null',
    '{}',
    '[]',
    '0',
    '0.0',
    '0.00',
    '-1',
  ].contains(val.toString());
}

List<Map<String, dynamic>> deepCopyList(List<dynamic> source) {
  List<Map<String, dynamic>> copy = [];
  for (var item in source) {
    copy.add(Map.from(item)); // Salin elemen-elemen satu per satu
  }
  return copy;
}

Map<String, dynamic> deepCopyMap(dynamic source) {
  Map<String, dynamic> copy = {};
  // String a = json.encode(source);
  // Map<String, dynamic> b = json.decode(a);
  // copy.assignAll(b);
  // source.forEach((key, value) {
  //   copy[key] = value;
  // });
  return copy;
}

List<String> spitLicensePlate(String input) {
  RegExp regex = RegExp(r'^([A-Za-z]{1,2})(\d+)([A-Za-z]{1,3})$');
  Match? match = regex.firstMatch(input);

  if (match != null) {
    // match.group(1) akan berisi 1 atau 2 karakter pertama
    // match.group(2) akan berisi angka di tengah
    // match.group(3) akan berisi 1 sampai 3 karakter terakhir
    return [match.group(1)!, match.group(2)!, match.group(3)!];
  } else {
    // Handle jika tidak ada kecocokan
    return [];
  }
}
