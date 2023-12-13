import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_tempOutlet')) {
        try {
          final serializedData = prefs.getString('ff_tempOutlet') ?? '{}';
          _tempOutlet =
              OutletsStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _cousinesRef = prefs.getString('ff_cousinesRef')?.ref ?? _cousinesRef;
    });
    _safeInit(() {
      _tempCuisines = prefs.getStringList('ff_tempCuisines') ?? _tempCuisines;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  OutletsStruct _tempOutlet = OutletsStruct.fromSerializableMap(jsonDecode(
      '{"outlet_timings":"[]","outlet_cuisines":"[]","outlet_photos":"[]","outlet_videos":"[]"}'));
  OutletsStruct get tempOutlet => _tempOutlet;
  set tempOutlet(OutletsStruct value) {
    _tempOutlet = value;
    prefs.setString('ff_tempOutlet', value.serialize());
  }

  void updateTempOutletStruct(Function(OutletsStruct) updateFn) {
    updateFn(_tempOutlet);
    prefs.setString('ff_tempOutlet', _tempOutlet.serialize());
  }

  DocumentReference? _cousinesRef =
      FirebaseFirestore.instance.doc('/cuisines/cuisines');
  DocumentReference? get cousinesRef => _cousinesRef;
  set cousinesRef(DocumentReference? value) {
    _cousinesRef = value;
    value != null
        ? prefs.setString('ff_cousinesRef', value.path)
        : prefs.remove('ff_cousinesRef');
  }

  List<String> _tempCuisines = [];
  List<String> get tempCuisines => _tempCuisines;
  set tempCuisines(List<String> value) {
    _tempCuisines = value;
    prefs.setStringList('ff_tempCuisines', value);
  }

  void addToTempCuisines(String value) {
    _tempCuisines.add(value);
    prefs.setStringList('ff_tempCuisines', _tempCuisines);
  }

  void removeFromTempCuisines(String value) {
    _tempCuisines.remove(value);
    prefs.setStringList('ff_tempCuisines', _tempCuisines);
  }

  void removeAtIndexFromTempCuisines(int index) {
    _tempCuisines.removeAt(index);
    prefs.setStringList('ff_tempCuisines', _tempCuisines);
  }

  void updateTempCuisinesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _tempCuisines[index] = updateFn(_tempCuisines[index]);
    prefs.setStringList('ff_tempCuisines', _tempCuisines);
  }

  void insertAtIndexInTempCuisines(int index, String value) {
    _tempCuisines.insert(index, value);
    prefs.setStringList('ff_tempCuisines', _tempCuisines);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
