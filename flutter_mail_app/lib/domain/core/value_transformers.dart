import 'dart:convert';

dynamic makeDecodeValue(String value) {
  String valueWithDoubleQuotes = value;
  if (!value.startsWith('"')) {
    valueWithDoubleQuotes = '"$valueWithDoubleQuotes';
  }
  if (!value.endsWith('"')) {
    valueWithDoubleQuotes = '$valueWithDoubleQuotes"';
  }

  return jsonDecode(valueWithDoubleQuotes);
}

String viewOnlyFirstLineContent(String content) {
  if (content.contains('\n')) {
    final contentSplitted = content.split('\n');

    return contentSplitted.elementAt(0);
  }

  return content;
}

String makeTimePadLeft2(int time) => time.toString().padLeft(2, '0');

String formatHourWithMinute(int hour, int minute) =>
    '${makeTimePadLeft2(hour)}:${makeTimePadLeft2(minute)}';
