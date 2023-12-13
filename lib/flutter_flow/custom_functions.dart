import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

LatLng latLongLocConvertor(
  double? lat,
  double? long,
) {
  if (lat == null || long == null) {
    throw ArgumentError('Latitude and longitude cannot be null');
  }

  // Check if the latitude and longitude values are within valid ranges
  if (lat < -90.0 || lat > 90.0 || long < -180.0 || long > 180.0) {
    throw ArgumentError('Latitude and longitude values are out of range');
  }

  return LatLng(lat, long);
}

List<String> timingsDayOptions(List<TimingsDayStruct>? tempTimingsSelected) {
  List<String> allDays = [
    'Friday',
    'Saturday',
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday'
  ];

  if (tempTimingsSelected == null || tempTimingsSelected.isEmpty) {
    return allDays;
  }

  Set<String> selectedDays =
      tempTimingsSelected.map((timing) => timing.day).toSet();

  List<String> remainingDays =
      allDays.where((day) => !selectedDays.contains(day)).toList();

  return remainingDays;
}
