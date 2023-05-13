import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _eduDetails =
        (await secureStorage.getString('ff_eduDetails'))?.ref ?? _eduDetails;
    _isSet = await secureStorage.getBool('ff_isSet') ?? _isSet;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  Color _icon = Color(4283120111);
  Color get icon => _icon;
  set icon(Color _value) {
    _icon = _value;
  }

  DocumentReference? _eduDetails =
      FirebaseFirestore.instance.doc('/edu_KYC/LwwQe3VeOhMPE72fybkE8MPlhAE3');
  DocumentReference? get eduDetails => _eduDetails;
  set eduDetails(DocumentReference? _value) {
    _eduDetails = _value;
    _value != null
        ? secureStorage.setString('ff_eduDetails', _value.path)
        : secureStorage.remove('ff_eduDetails');
  }

  void deleteEduDetails() {
    secureStorage.delete(key: 'ff_eduDetails');
  }

  bool _isSet = true;
  bool get isSet => _isSet;
  set isSet(bool _value) {
    _isSet = _value;
    secureStorage.setBool('ff_isSet', _value);
  }

  void deleteIsSet() {
    secureStorage.delete(key: 'ff_isSet');
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

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
