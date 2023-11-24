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
import '/auth/firebase_auth/auth_util.dart';

dynamic saveChatHistory(
  dynamic chatHistory,
  dynamic newChat,
) {
  if (chatHistory is List) {
    chatHistory.add(newChat);
    return chatHistory;
  } else {
    return [newChat];
  }
}

dynamic convertToJSON(String prompt) {
  return json.decode('{"role": "user", "content": "$prompt"}');
}

DateTime? calculateAge(DateTime birthday) {
  // subtract from present age and return age difference
  DateTime? currentDate = DateTime.now();
  int? age = currentDate.year - birthday.year;
  int? month1 = currentDate.month;
  int? month2 = birthday.month;
  if (month2 > month1) {
    age--;
  } else if (month1 == month2) {
    int? day1 = currentDate.day;
    int? day2 = birthday.day;
    if (day2 > day1) {
      age--;
    }
  }
  return DateTime(age);
}

String? greetAccordingToTime(DateTime? currentTime) {
  // a functions that detects current time to determine type of greetings
  if (currentTime == null) {
    return null;
  }
  int hour = currentTime.hour;
  if (hour < 12) {
    return 'Good morning';
  } else if (hour < 18) {
    return 'Good afternoon';
  } else {
    return 'Good evening';
  }
}
