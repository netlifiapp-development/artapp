import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String convertStringToImage(List<String> imageString) {
  return imageString[0];
}

String? getFirstItem(List<String>? imageList) {
  if (imageList != null && imageList.isNotEmpty) {
    return imageList[0];
  }
  return null;
}

int convertDoubleToInt(double value) {
  return value.toInt();
}
