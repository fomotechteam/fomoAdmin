import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class OutletsRecord extends FirestoreRecord {
  OutletsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "outlet_id" field.
  String? _outletId;
  String get outletId => _outletId ?? '';
  bool hasOutletId() => _outletId != null;

  // "outlet_name" field.
  String? _outletName;
  String get outletName => _outletName ?? '';
  bool hasOutletName() => _outletName != null;

  // "outlet_bio" field.
  String? _outletBio;
  String get outletBio => _outletBio ?? '';
  bool hasOutletBio() => _outletBio != null;

  // "outlet_description" field.
  String? _outletDescription;
  String get outletDescription => _outletDescription ?? '';
  bool hasOutletDescription() => _outletDescription != null;

  // "outlet_adress" field.
  String? _outletAdress;
  String get outletAdress => _outletAdress ?? '';
  bool hasOutletAdress() => _outletAdress != null;

  // "outlet_location" field.
  LatLng? _outletLocation;
  LatLng? get outletLocation => _outletLocation;
  bool hasOutletLocation() => _outletLocation != null;

  // "outlet_ownerName" field.
  String? _outletOwnerName;
  String get outletOwnerName => _outletOwnerName ?? '';
  bool hasOutletOwnerName() => _outletOwnerName != null;

  // "outlet_dresscode" field.
  String? _outletDresscode;
  String get outletDresscode => _outletDresscode ?? '';
  bool hasOutletDresscode() => _outletDresscode != null;

  // "outlet_phonenumber" field.
  String? _outletPhonenumber;
  String get outletPhonenumber => _outletPhonenumber ?? '';
  bool hasOutletPhonenumber() => _outletPhonenumber != null;

  // "outlet_altPhonenumber" field.
  String? _outletAltPhonenumber;
  String get outletAltPhonenumber => _outletAltPhonenumber ?? '';
  bool hasOutletAltPhonenumber() => _outletAltPhonenumber != null;

  // "outlet_email" field.
  String? _outletEmail;
  String get outletEmail => _outletEmail ?? '';
  bool hasOutletEmail() => _outletEmail != null;

  // "outlet_website" field.
  String? _outletWebsite;
  String get outletWebsite => _outletWebsite ?? '';
  bool hasOutletWebsite() => _outletWebsite != null;

  // "outlet_cuisines" field.
  List<String>? _outletCuisines;
  List<String> get outletCuisines => _outletCuisines ?? const [];
  bool hasOutletCuisines() => _outletCuisines != null;

  // "outlet_menu" field.
  String? _outletMenu;
  String get outletMenu => _outletMenu ?? '';
  bool hasOutletMenu() => _outletMenu != null;

  // "outlet_logo" field.
  String? _outletLogo;
  String get outletLogo => _outletLogo ?? '';
  bool hasOutletLogo() => _outletLogo != null;

  // "outlet_photos" field.
  List<String>? _outletPhotos;
  List<String> get outletPhotos => _outletPhotos ?? const [];
  bool hasOutletPhotos() => _outletPhotos != null;

  // "outlet_videos" field.
  List<String>? _outletVideos;
  List<String> get outletVideos => _outletVideos ?? const [];
  bool hasOutletVideos() => _outletVideos != null;

  // "outlet_pincode" field.
  String? _outletPincode;
  String get outletPincode => _outletPincode ?? '';
  bool hasOutletPincode() => _outletPincode != null;

  // "outlet_timings" field.
  List<TimingsDayStruct>? _outletTimings;
  List<TimingsDayStruct> get outletTimings => _outletTimings ?? const [];
  bool hasOutletTimings() => _outletTimings != null;

  // "outlet_reservationEnabled" field.
  bool? _outletReservationEnabled;
  bool get outletReservationEnabled => _outletReservationEnabled ?? false;
  bool hasOutletReservationEnabled() => _outletReservationEnabled != null;

  // "outlet_tokenForReservation" field.
  double? _outletTokenForReservation;
  double get outletTokenForReservation => _outletTokenForReservation ?? 0.0;
  bool hasOutletTokenForReservation() => _outletTokenForReservation != null;

  // "outlet_city" field.
  String? _outletCity;
  String get outletCity => _outletCity ?? '';
  bool hasOutletCity() => _outletCity != null;

  // "outlet_type" field.
  List<String>? _outletType;
  List<String> get outletType => _outletType ?? const [];
  bool hasOutletType() => _outletType != null;

  void _initializeFields() {
    _outletId = snapshotData['outlet_id'] as String?;
    _outletName = snapshotData['outlet_name'] as String?;
    _outletBio = snapshotData['outlet_bio'] as String?;
    _outletDescription = snapshotData['outlet_description'] as String?;
    _outletAdress = snapshotData['outlet_adress'] as String?;
    _outletLocation = snapshotData['outlet_location'] as LatLng?;
    _outletOwnerName = snapshotData['outlet_ownerName'] as String?;
    _outletDresscode = snapshotData['outlet_dresscode'] as String?;
    _outletPhonenumber = snapshotData['outlet_phonenumber'] as String?;
    _outletAltPhonenumber = snapshotData['outlet_altPhonenumber'] as String?;
    _outletEmail = snapshotData['outlet_email'] as String?;
    _outletWebsite = snapshotData['outlet_website'] as String?;
    _outletCuisines = getDataList(snapshotData['outlet_cuisines']);
    _outletMenu = snapshotData['outlet_menu'] as String?;
    _outletLogo = snapshotData['outlet_logo'] as String?;
    _outletPhotos = getDataList(snapshotData['outlet_photos']);
    _outletVideos = getDataList(snapshotData['outlet_videos']);
    _outletPincode = snapshotData['outlet_pincode'] as String?;
    _outletTimings = getStructList(
      snapshotData['outlet_timings'],
      TimingsDayStruct.fromMap,
    );
    _outletReservationEnabled =
        snapshotData['outlet_reservationEnabled'] as bool?;
    _outletTokenForReservation =
        castToType<double>(snapshotData['outlet_tokenForReservation']);
    _outletCity = snapshotData['outlet_city'] as String?;
    _outletType = getDataList(snapshotData['outlet_type']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('outlets');

  static Stream<OutletsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OutletsRecord.fromSnapshot(s));

  static Future<OutletsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OutletsRecord.fromSnapshot(s));

  static OutletsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OutletsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OutletsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OutletsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OutletsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OutletsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOutletsRecordData({
  String? outletId,
  String? outletName,
  String? outletBio,
  String? outletDescription,
  String? outletAdress,
  LatLng? outletLocation,
  String? outletOwnerName,
  String? outletDresscode,
  String? outletPhonenumber,
  String? outletAltPhonenumber,
  String? outletEmail,
  String? outletWebsite,
  String? outletMenu,
  String? outletLogo,
  String? outletPincode,
  bool? outletReservationEnabled,
  double? outletTokenForReservation,
  String? outletCity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'outlet_id': outletId,
      'outlet_name': outletName,
      'outlet_bio': outletBio,
      'outlet_description': outletDescription,
      'outlet_adress': outletAdress,
      'outlet_location': outletLocation,
      'outlet_ownerName': outletOwnerName,
      'outlet_dresscode': outletDresscode,
      'outlet_phonenumber': outletPhonenumber,
      'outlet_altPhonenumber': outletAltPhonenumber,
      'outlet_email': outletEmail,
      'outlet_website': outletWebsite,
      'outlet_menu': outletMenu,
      'outlet_logo': outletLogo,
      'outlet_pincode': outletPincode,
      'outlet_reservationEnabled': outletReservationEnabled,
      'outlet_tokenForReservation': outletTokenForReservation,
      'outlet_city': outletCity,
    }.withoutNulls,
  );

  return firestoreData;
}

class OutletsRecordDocumentEquality implements Equality<OutletsRecord> {
  const OutletsRecordDocumentEquality();

  @override
  bool equals(OutletsRecord? e1, OutletsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.outletId == e2?.outletId &&
        e1?.outletName == e2?.outletName &&
        e1?.outletBio == e2?.outletBio &&
        e1?.outletDescription == e2?.outletDescription &&
        e1?.outletAdress == e2?.outletAdress &&
        e1?.outletLocation == e2?.outletLocation &&
        e1?.outletOwnerName == e2?.outletOwnerName &&
        e1?.outletDresscode == e2?.outletDresscode &&
        e1?.outletPhonenumber == e2?.outletPhonenumber &&
        e1?.outletAltPhonenumber == e2?.outletAltPhonenumber &&
        e1?.outletEmail == e2?.outletEmail &&
        e1?.outletWebsite == e2?.outletWebsite &&
        listEquality.equals(e1?.outletCuisines, e2?.outletCuisines) &&
        e1?.outletMenu == e2?.outletMenu &&
        e1?.outletLogo == e2?.outletLogo &&
        listEquality.equals(e1?.outletPhotos, e2?.outletPhotos) &&
        listEquality.equals(e1?.outletVideos, e2?.outletVideos) &&
        e1?.outletPincode == e2?.outletPincode &&
        listEquality.equals(e1?.outletTimings, e2?.outletTimings) &&
        e1?.outletReservationEnabled == e2?.outletReservationEnabled &&
        e1?.outletTokenForReservation == e2?.outletTokenForReservation &&
        e1?.outletCity == e2?.outletCity &&
        listEquality.equals(e1?.outletType, e2?.outletType);
  }

  @override
  int hash(OutletsRecord? e) => const ListEquality().hash([
        e?.outletId,
        e?.outletName,
        e?.outletBio,
        e?.outletDescription,
        e?.outletAdress,
        e?.outletLocation,
        e?.outletOwnerName,
        e?.outletDresscode,
        e?.outletPhonenumber,
        e?.outletAltPhonenumber,
        e?.outletEmail,
        e?.outletWebsite,
        e?.outletCuisines,
        e?.outletMenu,
        e?.outletLogo,
        e?.outletPhotos,
        e?.outletVideos,
        e?.outletPincode,
        e?.outletTimings,
        e?.outletReservationEnabled,
        e?.outletTokenForReservation,
        e?.outletCity,
        e?.outletType
      ]);

  @override
  bool isValidKey(Object? o) => o is OutletsRecord;
}
