// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimingsDayStruct extends FFFirebaseStruct {
  TimingsDayStruct({
    String? day,
    DateTime? openingTime,
    DateTime? closingTime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _day = day,
        _openingTime = openingTime,
        _closingTime = closingTime,
        super(firestoreUtilData);

  // "day" field.
  String? _day;
  String get day => _day ?? '';
  set day(String? val) => _day = val;
  bool hasDay() => _day != null;

  // "openingTime" field.
  DateTime? _openingTime;
  DateTime? get openingTime => _openingTime;
  set openingTime(DateTime? val) => _openingTime = val;
  bool hasOpeningTime() => _openingTime != null;

  // "closingTime" field.
  DateTime? _closingTime;
  DateTime? get closingTime => _closingTime;
  set closingTime(DateTime? val) => _closingTime = val;
  bool hasClosingTime() => _closingTime != null;

  static TimingsDayStruct fromMap(Map<String, dynamic> data) =>
      TimingsDayStruct(
        day: data['day'] as String?,
        openingTime: data['openingTime'] as DateTime?,
        closingTime: data['closingTime'] as DateTime?,
      );

  static TimingsDayStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TimingsDayStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'day': _day,
        'openingTime': _openingTime,
        'closingTime': _closingTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'day': serializeParam(
          _day,
          ParamType.String,
        ),
        'openingTime': serializeParam(
          _openingTime,
          ParamType.DateTime,
        ),
        'closingTime': serializeParam(
          _closingTime,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static TimingsDayStruct fromSerializableMap(Map<String, dynamic> data) =>
      TimingsDayStruct(
        day: deserializeParam(
          data['day'],
          ParamType.String,
          false,
        ),
        openingTime: deserializeParam(
          data['openingTime'],
          ParamType.DateTime,
          false,
        ),
        closingTime: deserializeParam(
          data['closingTime'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'TimingsDayStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TimingsDayStruct &&
        day == other.day &&
        openingTime == other.openingTime &&
        closingTime == other.closingTime;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([day, openingTime, closingTime]);
}

TimingsDayStruct createTimingsDayStruct({
  String? day,
  DateTime? openingTime,
  DateTime? closingTime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TimingsDayStruct(
      day: day,
      openingTime: openingTime,
      closingTime: closingTime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TimingsDayStruct? updateTimingsDayStruct(
  TimingsDayStruct? timingsDay, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    timingsDay
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTimingsDayStructData(
  Map<String, dynamic> firestoreData,
  TimingsDayStruct? timingsDay,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (timingsDay == null) {
    return;
  }
  if (timingsDay.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && timingsDay.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final timingsDayData = getTimingsDayFirestoreData(timingsDay, forFieldValue);
  final nestedData = timingsDayData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = timingsDay.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTimingsDayFirestoreData(
  TimingsDayStruct? timingsDay, [
  bool forFieldValue = false,
]) {
  if (timingsDay == null) {
    return {};
  }
  final firestoreData = mapToFirestore(timingsDay.toMap());

  // Add any Firestore field values
  timingsDay.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTimingsDayListFirestoreData(
  List<TimingsDayStruct>? timingsDays,
) =>
    timingsDays?.map((e) => getTimingsDayFirestoreData(e, true)).toList() ?? [];
