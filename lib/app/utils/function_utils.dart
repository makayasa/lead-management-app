import 'dart:developer' as dev;
import 'dart:convert';

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
