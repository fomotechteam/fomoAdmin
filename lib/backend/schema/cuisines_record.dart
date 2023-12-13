import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class CuisinesRecord extends FirestoreRecord {
  CuisinesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cuisines" field.
  List<String>? _cuisines;
  List<String> get cuisines => _cuisines ?? const [];
  bool hasCuisines() => _cuisines != null;

  void _initializeFields() {
    _cuisines = getDataList(snapshotData['cuisines']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cuisines');

  static Stream<CuisinesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CuisinesRecord.fromSnapshot(s));

  static Future<CuisinesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CuisinesRecord.fromSnapshot(s));

  static CuisinesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CuisinesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CuisinesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CuisinesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CuisinesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CuisinesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCuisinesRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class CuisinesRecordDocumentEquality implements Equality<CuisinesRecord> {
  const CuisinesRecordDocumentEquality();

  @override
  bool equals(CuisinesRecord? e1, CuisinesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.cuisines, e2?.cuisines);
  }

  @override
  int hash(CuisinesRecord? e) => const ListEquality().hash([e?.cuisines]);

  @override
  bool isValidKey(Object? o) => o is CuisinesRecord;
}
