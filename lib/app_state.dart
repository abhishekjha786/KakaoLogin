import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _signupOnbording = false;
  bool get signupOnbording => _signupOnbording;
  set signupOnbording(bool _value) {
    _signupOnbording = _value;
  }

  String _userPostAdd = '';
  String get userPostAdd => _userPostAdd;
  set userPostAdd(String _value) {
    _userPostAdd = _value;
  }

  String _userRequestAddTop = '';
  String get userRequestAddTop => _userRequestAddTop;
  set userRequestAddTop(String _value) {
    _userRequestAddTop = _value;
  }

  String _userRequestAddBot = '';
  String get userRequestAddBot => _userRequestAddBot;
  set userRequestAddBot(String _value) {
    _userRequestAddBot = _value;
  }

  DocumentReference? _userRequestAI;
  DocumentReference? get userRequestAI => _userRequestAI;
  set userRequestAI(DocumentReference? _value) {
    _userRequestAI = _value;
  }

  bool _userRequestCallNow = false;
  bool get userRequestCallNow => _userRequestCallNow;
  set userRequestCallNow(bool _value) {
    _userRequestCallNow = _value;
  }

  bool _noticeOpen = false;
  bool get noticeOpen => _noticeOpen;
  set noticeOpen(bool _value) {
    _noticeOpen = _value;
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
