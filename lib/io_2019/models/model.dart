import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

bool _datesAreSameDay(DateTime a, DateTime b) {
  return a?.year == b?.year && a?.month == b?.month && a?.day == b?.day;
}

enum MealType {
  breakfast,
  lunch,
  dinner,
}

LogEntry _$LogEntryFromJson(Map<String, dynamic> json) {
  return LogEntry(
    veggieId: json['veggieId'] as int,
    servings: json['serving'] as int,
    timestamp: DateTime.parse(json['timestamp'] as String),
    mealType: _$enumDecode(_$MealTypeEnumMap, json['mealType']),
  );
}
Map<String, dynamic> _$LogEntryToJson(LogEntry instance) => <String, dynamic>{
  'veggieId': instance.veggieId,
  'servings': instance.servings,
  'timestamp': instance.timestamp.toIso8601String(),
  'mealType': _$MealTypeEnumMap[instance.mealType]
};

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError(
        "a value must be provided. Supported values: '${enumValues.values.join(', ')}");
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not of the supported values: ${enumValues.values.join(', ')}'))
      .key;
}
const _$MealTypeEnumMap = <MealType, dynamic>{
  MealType.breakfast : 'breakfast',
  MealType.lunch :'lunch',
  MealType.dinner : 'dinner',
};

@JsonSerializable(nullable: true)
class LogEntry {
  final int veggieId;
  final int servings;
  final DateTime timestamp;
  final MealType mealType;

  const LogEntry(
      {@required this.veggieId,
      @required this.servings,
      @required this.timestamp,
      this.mealType = MealType.lunch});

  factory LogEntry.fromJson(Map<String, dynamic> json) {
    return _$LogEntryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LogEntryToJson(this);
}



class AppState extends ChangeNotifier {}
