// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OutletsStruct extends FFFirebaseStruct {
  OutletsStruct({
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
    List<String>? outletCuisines,
    String? outletMenu,
    String? outletLogo,
    List<String>? outletPhotos,
    List<String>? outletVideos,
    String? outletPincode,
    String? outletString,
    List<TimingsDayStruct>? outletTimings,
    List<String>? outletType,
    bool? outletReservationEnabled,
    bool? outletReservationStagger,
    double? outletTokenForReservation,
    String? outletCity,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _outletId = outletId,
        _outletName = outletName,
        _outletBio = outletBio,
        _outletDescription = outletDescription,
        _outletAdress = outletAdress,
        _outletLocation = outletLocation,
        _outletOwnerName = outletOwnerName,
        _outletDresscode = outletDresscode,
        _outletPhonenumber = outletPhonenumber,
        _outletAltPhonenumber = outletAltPhonenumber,
        _outletEmail = outletEmail,
        _outletWebsite = outletWebsite,
        _outletCuisines = outletCuisines,
        _outletMenu = outletMenu,
        _outletLogo = outletLogo,
        _outletPhotos = outletPhotos,
        _outletVideos = outletVideos,
        _outletPincode = outletPincode,
        _outletString = outletString,
        _outletTimings = outletTimings,
        _outletType = outletType,
        _outletReservationEnabled = outletReservationEnabled,
        _outletReservationStagger = outletReservationStagger,
        _outletTokenForReservation = outletTokenForReservation,
        _outletCity = outletCity,
        super(firestoreUtilData);

  // "outlet_id" field.
  String? _outletId;
  String get outletId => _outletId ?? '';
  set outletId(String? val) => _outletId = val;
  bool hasOutletId() => _outletId != null;

  // "outlet_name" field.
  String? _outletName;
  String get outletName => _outletName ?? '';
  set outletName(String? val) => _outletName = val;
  bool hasOutletName() => _outletName != null;

  // "outlet_bio" field.
  String? _outletBio;
  String get outletBio => _outletBio ?? '';
  set outletBio(String? val) => _outletBio = val;
  bool hasOutletBio() => _outletBio != null;

  // "outlet_description" field.
  String? _outletDescription;
  String get outletDescription => _outletDescription ?? '';
  set outletDescription(String? val) => _outletDescription = val;
  bool hasOutletDescription() => _outletDescription != null;

  // "outlet_adress" field.
  String? _outletAdress;
  String get outletAdress => _outletAdress ?? '';
  set outletAdress(String? val) => _outletAdress = val;
  bool hasOutletAdress() => _outletAdress != null;

  // "outlet_location" field.
  LatLng? _outletLocation;
  LatLng? get outletLocation => _outletLocation;
  set outletLocation(LatLng? val) => _outletLocation = val;
  bool hasOutletLocation() => _outletLocation != null;

  // "outlet_ownerName" field.
  String? _outletOwnerName;
  String get outletOwnerName => _outletOwnerName ?? '';
  set outletOwnerName(String? val) => _outletOwnerName = val;
  bool hasOutletOwnerName() => _outletOwnerName != null;

  // "outlet_dresscode" field.
  String? _outletDresscode;
  String get outletDresscode => _outletDresscode ?? '';
  set outletDresscode(String? val) => _outletDresscode = val;
  bool hasOutletDresscode() => _outletDresscode != null;

  // "outlet_phonenumber" field.
  String? _outletPhonenumber;
  String get outletPhonenumber => _outletPhonenumber ?? '';
  set outletPhonenumber(String? val) => _outletPhonenumber = val;
  bool hasOutletPhonenumber() => _outletPhonenumber != null;

  // "outlet_altPhonenumber" field.
  String? _outletAltPhonenumber;
  String get outletAltPhonenumber => _outletAltPhonenumber ?? '';
  set outletAltPhonenumber(String? val) => _outletAltPhonenumber = val;
  bool hasOutletAltPhonenumber() => _outletAltPhonenumber != null;

  // "outlet_email" field.
  String? _outletEmail;
  String get outletEmail => _outletEmail ?? '';
  set outletEmail(String? val) => _outletEmail = val;
  bool hasOutletEmail() => _outletEmail != null;

  // "outlet_website" field.
  String? _outletWebsite;
  String get outletWebsite => _outletWebsite ?? '';
  set outletWebsite(String? val) => _outletWebsite = val;
  bool hasOutletWebsite() => _outletWebsite != null;

  // "outlet_cuisines" field.
  List<String>? _outletCuisines;
  List<String> get outletCuisines => _outletCuisines ?? const [];
  set outletCuisines(List<String>? val) => _outletCuisines = val;
  void updateOutletCuisines(Function(List<String>) updateFn) =>
      updateFn(_outletCuisines ??= []);
  bool hasOutletCuisines() => _outletCuisines != null;

  // "outlet_menu" field.
  String? _outletMenu;
  String get outletMenu => _outletMenu ?? '';
  set outletMenu(String? val) => _outletMenu = val;
  bool hasOutletMenu() => _outletMenu != null;

  // "outlet_logo" field.
  String? _outletLogo;
  String get outletLogo => _outletLogo ?? '';
  set outletLogo(String? val) => _outletLogo = val;
  bool hasOutletLogo() => _outletLogo != null;

  // "outlet_photos" field.
  List<String>? _outletPhotos;
  List<String> get outletPhotos => _outletPhotos ?? const [];
  set outletPhotos(List<String>? val) => _outletPhotos = val;
  void updateOutletPhotos(Function(List<String>) updateFn) =>
      updateFn(_outletPhotos ??= []);
  bool hasOutletPhotos() => _outletPhotos != null;

  // "outlet_videos" field.
  List<String>? _outletVideos;
  List<String> get outletVideos => _outletVideos ?? const [];
  set outletVideos(List<String>? val) => _outletVideos = val;
  void updateOutletVideos(Function(List<String>) updateFn) =>
      updateFn(_outletVideos ??= []);
  bool hasOutletVideos() => _outletVideos != null;

  // "outlet_pincode" field.
  String? _outletPincode;
  String get outletPincode => _outletPincode ?? '';
  set outletPincode(String? val) => _outletPincode = val;
  bool hasOutletPincode() => _outletPincode != null;

  // "outlet_string" field.
  String? _outletString;
  String get outletString => _outletString ?? '';
  set outletString(String? val) => _outletString = val;
  bool hasOutletString() => _outletString != null;

  // "outlet_timings" field.
  List<TimingsDayStruct>? _outletTimings;
  List<TimingsDayStruct> get outletTimings => _outletTimings ?? const [];
  set outletTimings(List<TimingsDayStruct>? val) => _outletTimings = val;
  void updateOutletTimings(Function(List<TimingsDayStruct>) updateFn) =>
      updateFn(_outletTimings ??= []);
  bool hasOutletTimings() => _outletTimings != null;

  // "outlet_type" field.
  List<String>? _outletType;
  List<String> get outletType => _outletType ?? const [];
  set outletType(List<String>? val) => _outletType = val;
  void updateOutletType(Function(List<String>) updateFn) =>
      updateFn(_outletType ??= []);
  bool hasOutletType() => _outletType != null;

  // "outlet_reservationEnabled" field.
  bool? _outletReservationEnabled;
  bool get outletReservationEnabled => _outletReservationEnabled ?? false;
  set outletReservationEnabled(bool? val) => _outletReservationEnabled = val;
  bool hasOutletReservationEnabled() => _outletReservationEnabled != null;

  // "outlet_reservationStagger" field.
  bool? _outletReservationStagger;
  bool get outletReservationStagger => _outletReservationStagger ?? false;
  set outletReservationStagger(bool? val) => _outletReservationStagger = val;
  bool hasOutletReservationStagger() => _outletReservationStagger != null;

  // "outlet_tokenForReservation" field.
  double? _outletTokenForReservation;
  double get outletTokenForReservation => _outletTokenForReservation ?? 0.0;
  set outletTokenForReservation(double? val) =>
      _outletTokenForReservation = val;
  void incrementOutletTokenForReservation(double amount) =>
      _outletTokenForReservation = outletTokenForReservation + amount;
  bool hasOutletTokenForReservation() => _outletTokenForReservation != null;

  // "outlet_city" field.
  String? _outletCity;
  String get outletCity => _outletCity ?? '';
  set outletCity(String? val) => _outletCity = val;
  bool hasOutletCity() => _outletCity != null;

  static OutletsStruct fromMap(Map<String, dynamic> data) => OutletsStruct(
        outletId: data['outlet_id'] as String?,
        outletName: data['outlet_name'] as String?,
        outletBio: data['outlet_bio'] as String?,
        outletDescription: data['outlet_description'] as String?,
        outletAdress: data['outlet_adress'] as String?,
        outletLocation: data['outlet_location'] as LatLng?,
        outletOwnerName: data['outlet_ownerName'] as String?,
        outletDresscode: data['outlet_dresscode'] as String?,
        outletPhonenumber: data['outlet_phonenumber'] as String?,
        outletAltPhonenumber: data['outlet_altPhonenumber'] as String?,
        outletEmail: data['outlet_email'] as String?,
        outletWebsite: data['outlet_website'] as String?,
        outletCuisines: getDataList(data['outlet_cuisines']),
        outletMenu: data['outlet_menu'] as String?,
        outletLogo: data['outlet_logo'] as String?,
        outletPhotos: getDataList(data['outlet_photos']),
        outletVideos: getDataList(data['outlet_videos']),
        outletPincode: data['outlet_pincode'] as String?,
        outletString: data['outlet_string'] as String?,
        outletTimings: getStructList(
          data['outlet_timings'],
          TimingsDayStruct.fromMap,
        ),
        outletType: getDataList(data['outlet_type']),
        outletReservationEnabled: data['outlet_reservationEnabled'] as bool?,
        outletReservationStagger: data['outlet_reservationStagger'] as bool?,
        outletTokenForReservation:
            castToType<double>(data['outlet_tokenForReservation']),
        outletCity: data['outlet_city'] as String?,
      );

  static OutletsStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? OutletsStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'outlet_id': _outletId,
        'outlet_name': _outletName,
        'outlet_bio': _outletBio,
        'outlet_description': _outletDescription,
        'outlet_adress': _outletAdress,
        'outlet_location': _outletLocation,
        'outlet_ownerName': _outletOwnerName,
        'outlet_dresscode': _outletDresscode,
        'outlet_phonenumber': _outletPhonenumber,
        'outlet_altPhonenumber': _outletAltPhonenumber,
        'outlet_email': _outletEmail,
        'outlet_website': _outletWebsite,
        'outlet_cuisines': _outletCuisines,
        'outlet_menu': _outletMenu,
        'outlet_logo': _outletLogo,
        'outlet_photos': _outletPhotos,
        'outlet_videos': _outletVideos,
        'outlet_pincode': _outletPincode,
        'outlet_string': _outletString,
        'outlet_timings': _outletTimings?.map((e) => e.toMap()).toList(),
        'outlet_type': _outletType,
        'outlet_reservationEnabled': _outletReservationEnabled,
        'outlet_reservationStagger': _outletReservationStagger,
        'outlet_tokenForReservation': _outletTokenForReservation,
        'outlet_city': _outletCity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'outlet_id': serializeParam(
          _outletId,
          ParamType.String,
        ),
        'outlet_name': serializeParam(
          _outletName,
          ParamType.String,
        ),
        'outlet_bio': serializeParam(
          _outletBio,
          ParamType.String,
        ),
        'outlet_description': serializeParam(
          _outletDescription,
          ParamType.String,
        ),
        'outlet_adress': serializeParam(
          _outletAdress,
          ParamType.String,
        ),
        'outlet_location': serializeParam(
          _outletLocation,
          ParamType.LatLng,
        ),
        'outlet_ownerName': serializeParam(
          _outletOwnerName,
          ParamType.String,
        ),
        'outlet_dresscode': serializeParam(
          _outletDresscode,
          ParamType.String,
        ),
        'outlet_phonenumber': serializeParam(
          _outletPhonenumber,
          ParamType.String,
        ),
        'outlet_altPhonenumber': serializeParam(
          _outletAltPhonenumber,
          ParamType.String,
        ),
        'outlet_email': serializeParam(
          _outletEmail,
          ParamType.String,
        ),
        'outlet_website': serializeParam(
          _outletWebsite,
          ParamType.String,
        ),
        'outlet_cuisines': serializeParam(
          _outletCuisines,
          ParamType.String,
          true,
        ),
        'outlet_menu': serializeParam(
          _outletMenu,
          ParamType.String,
        ),
        'outlet_logo': serializeParam(
          _outletLogo,
          ParamType.String,
        ),
        'outlet_photos': serializeParam(
          _outletPhotos,
          ParamType.String,
          true,
        ),
        'outlet_videos': serializeParam(
          _outletVideos,
          ParamType.String,
          true,
        ),
        'outlet_pincode': serializeParam(
          _outletPincode,
          ParamType.String,
        ),
        'outlet_string': serializeParam(
          _outletString,
          ParamType.String,
        ),
        'outlet_timings': serializeParam(
          _outletTimings,
          ParamType.DataStruct,
          true,
        ),
        'outlet_type': serializeParam(
          _outletType,
          ParamType.String,
          true,
        ),
        'outlet_reservationEnabled': serializeParam(
          _outletReservationEnabled,
          ParamType.bool,
        ),
        'outlet_reservationStagger': serializeParam(
          _outletReservationStagger,
          ParamType.bool,
        ),
        'outlet_tokenForReservation': serializeParam(
          _outletTokenForReservation,
          ParamType.double,
        ),
        'outlet_city': serializeParam(
          _outletCity,
          ParamType.String,
        ),
      }.withoutNulls;

  static OutletsStruct fromSerializableMap(Map<String, dynamic> data) =>
      OutletsStruct(
        outletId: deserializeParam(
          data['outlet_id'],
          ParamType.String,
          false,
        ),
        outletName: deserializeParam(
          data['outlet_name'],
          ParamType.String,
          false,
        ),
        outletBio: deserializeParam(
          data['outlet_bio'],
          ParamType.String,
          false,
        ),
        outletDescription: deserializeParam(
          data['outlet_description'],
          ParamType.String,
          false,
        ),
        outletAdress: deserializeParam(
          data['outlet_adress'],
          ParamType.String,
          false,
        ),
        outletLocation: deserializeParam(
          data['outlet_location'],
          ParamType.LatLng,
          false,
        ),
        outletOwnerName: deserializeParam(
          data['outlet_ownerName'],
          ParamType.String,
          false,
        ),
        outletDresscode: deserializeParam(
          data['outlet_dresscode'],
          ParamType.String,
          false,
        ),
        outletPhonenumber: deserializeParam(
          data['outlet_phonenumber'],
          ParamType.String,
          false,
        ),
        outletAltPhonenumber: deserializeParam(
          data['outlet_altPhonenumber'],
          ParamType.String,
          false,
        ),
        outletEmail: deserializeParam(
          data['outlet_email'],
          ParamType.String,
          false,
        ),
        outletWebsite: deserializeParam(
          data['outlet_website'],
          ParamType.String,
          false,
        ),
        outletCuisines: deserializeParam<String>(
          data['outlet_cuisines'],
          ParamType.String,
          true,
        ),
        outletMenu: deserializeParam(
          data['outlet_menu'],
          ParamType.String,
          false,
        ),
        outletLogo: deserializeParam(
          data['outlet_logo'],
          ParamType.String,
          false,
        ),
        outletPhotos: deserializeParam<String>(
          data['outlet_photos'],
          ParamType.String,
          true,
        ),
        outletVideos: deserializeParam<String>(
          data['outlet_videos'],
          ParamType.String,
          true,
        ),
        outletPincode: deserializeParam(
          data['outlet_pincode'],
          ParamType.String,
          false,
        ),
        outletString: deserializeParam(
          data['outlet_string'],
          ParamType.String,
          false,
        ),
        outletTimings: deserializeStructParam<TimingsDayStruct>(
          data['outlet_timings'],
          ParamType.DataStruct,
          true,
          structBuilder: TimingsDayStruct.fromSerializableMap,
        ),
        outletType: deserializeParam<String>(
          data['outlet_type'],
          ParamType.String,
          true,
        ),
        outletReservationEnabled: deserializeParam(
          data['outlet_reservationEnabled'],
          ParamType.bool,
          false,
        ),
        outletReservationStagger: deserializeParam(
          data['outlet_reservationStagger'],
          ParamType.bool,
          false,
        ),
        outletTokenForReservation: deserializeParam(
          data['outlet_tokenForReservation'],
          ParamType.double,
          false,
        ),
        outletCity: deserializeParam(
          data['outlet_city'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OutletsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is OutletsStruct &&
        outletId == other.outletId &&
        outletName == other.outletName &&
        outletBio == other.outletBio &&
        outletDescription == other.outletDescription &&
        outletAdress == other.outletAdress &&
        outletLocation == other.outletLocation &&
        outletOwnerName == other.outletOwnerName &&
        outletDresscode == other.outletDresscode &&
        outletPhonenumber == other.outletPhonenumber &&
        outletAltPhonenumber == other.outletAltPhonenumber &&
        outletEmail == other.outletEmail &&
        outletWebsite == other.outletWebsite &&
        listEquality.equals(outletCuisines, other.outletCuisines) &&
        outletMenu == other.outletMenu &&
        outletLogo == other.outletLogo &&
        listEquality.equals(outletPhotos, other.outletPhotos) &&
        listEquality.equals(outletVideos, other.outletVideos) &&
        outletPincode == other.outletPincode &&
        outletString == other.outletString &&
        listEquality.equals(outletTimings, other.outletTimings) &&
        listEquality.equals(outletType, other.outletType) &&
        outletReservationEnabled == other.outletReservationEnabled &&
        outletReservationStagger == other.outletReservationStagger &&
        outletTokenForReservation == other.outletTokenForReservation &&
        outletCity == other.outletCity;
  }

  @override
  int get hashCode => const ListEquality().hash([
        outletId,
        outletName,
        outletBio,
        outletDescription,
        outletAdress,
        outletLocation,
        outletOwnerName,
        outletDresscode,
        outletPhonenumber,
        outletAltPhonenumber,
        outletEmail,
        outletWebsite,
        outletCuisines,
        outletMenu,
        outletLogo,
        outletPhotos,
        outletVideos,
        outletPincode,
        outletString,
        outletTimings,
        outletType,
        outletReservationEnabled,
        outletReservationStagger,
        outletTokenForReservation,
        outletCity
      ]);
}

OutletsStruct createOutletsStruct({
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
  String? outletString,
  bool? outletReservationEnabled,
  bool? outletReservationStagger,
  double? outletTokenForReservation,
  String? outletCity,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OutletsStruct(
      outletId: outletId,
      outletName: outletName,
      outletBio: outletBio,
      outletDescription: outletDescription,
      outletAdress: outletAdress,
      outletLocation: outletLocation,
      outletOwnerName: outletOwnerName,
      outletDresscode: outletDresscode,
      outletPhonenumber: outletPhonenumber,
      outletAltPhonenumber: outletAltPhonenumber,
      outletEmail: outletEmail,
      outletWebsite: outletWebsite,
      outletMenu: outletMenu,
      outletLogo: outletLogo,
      outletPincode: outletPincode,
      outletString: outletString,
      outletReservationEnabled: outletReservationEnabled,
      outletReservationStagger: outletReservationStagger,
      outletTokenForReservation: outletTokenForReservation,
      outletCity: outletCity,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OutletsStruct? updateOutletsStruct(
  OutletsStruct? outlets, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    outlets
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOutletsStructData(
  Map<String, dynamic> firestoreData,
  OutletsStruct? outlets,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (outlets == null) {
    return;
  }
  if (outlets.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && outlets.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final outletsData = getOutletsFirestoreData(outlets, forFieldValue);
  final nestedData = outletsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = outlets.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOutletsFirestoreData(
  OutletsStruct? outlets, [
  bool forFieldValue = false,
]) {
  if (outlets == null) {
    return {};
  }
  final firestoreData = mapToFirestore(outlets.toMap());

  // Add any Firestore field values
  outlets.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOutletsListFirestoreData(
  List<OutletsStruct>? outletss,
) =>
    outletss?.map((e) => getOutletsFirestoreData(e, true)).toList() ?? [];
