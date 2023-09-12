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

DateTime clearDay(DateTime today) {
  var art = DateTime(today!.year, today.month, today.day, 0, 0);
  return (art);
}

DateTime realTimeMeet(
  DateTime timeStart,
  int daysChoose,
) {
  DateTime timeEnd = timeStart;
  if (daysChoose == 9) {
    timeEnd = timeStart.add(const Duration(hours: 9));
  } else if (daysChoose == 10) {
    timeEnd = timeStart.add(const Duration(hours: 10));
  } else if (daysChoose == 11) {
    timeEnd = timeStart.add(const Duration(hours: 11));
  } else if (daysChoose == 12) {
    timeEnd = timeStart.add(const Duration(hours: 12));
  } else if (daysChoose == 13) {
    timeEnd = timeStart.add(const Duration(hours: 13));
  } else if (daysChoose == 14) {
    timeEnd = timeStart.add(const Duration(hours: 14));
  } else if (daysChoose == 15) {
    timeEnd = timeStart.add(const Duration(hours: 15));
  } else if (daysChoose == 16) {
    timeEnd = timeStart.add(const Duration(hours: 16));
  } else if (daysChoose == 17) {
    timeEnd = timeStart.add(const Duration(hours: 17));
  } else if (daysChoose == 18) {
    timeEnd = timeStart.add(const Duration(hours: 18));
  } else if (daysChoose == 19) {
    timeEnd = timeStart.add(const Duration(hours: 19));
  } else if (daysChoose == 20) {
    timeEnd = timeStart.add(const Duration(hours: 20));
  }
  return timeEnd;
}

double latitude(LatLng? latlng) {
  return (latlng!.latitude);
}

double longitude(LatLng? latlng) {
  return (latlng!.longitude);
}

String nullStreet(String? street) {
  return (street == null || street == 'null') ? '' : street;
}

String nullstreetCommo(String? street) {
  return (street == null || street == 'null') ? ' ' : ', ';
}

DateTime beforeMeeting(DateTime timeStart) {
  DateTime timeEnd = timeStart.add(const Duration(minutes: -15));
  return timeEnd;
}

int mines1(int one) {
  return (one - 1);
}

int plus(
  int one,
  int two,
) {
  return (one + two);
}

int mines(
  int one,
  int two,
) {
  return (one - two);
}

int ageCalcul(
  DateTime currentDate,
  DateTime birthDate,
) {
  return (currentDate.year - birthDate.year);
}

double raitingCount(
  int pointrait,
  double raiting,
) {
  if (pointrait == 0) {
    return 0;
  } else {
    return (raiting / pointrait);
  }
}

List<DateTime>? calendar(DateTime? today) {
  List<DateTime> exit = [];
  var art = DateTime(today!.year, today.month, today.day, 0, 0);
  for (var i = 0; i < 10; i++) {
    exit.add(art.add(Duration(days: i)));
  }
  return (exit);
}

String timeStumpRu(DateTime? date) {
  String art = '0';
  if (date!.weekday == 1) {
    art = 'ПН';
  } else if (date!.weekday == 2) {
    art = 'ВТ';
  } else if (date.weekday == 3) {
    art = 'СР';
  } else if (date.weekday == 4) {
    art = 'ЧТ';
  } else if (date.weekday == 5) {
    art = 'ПТ';
  } else if (date.weekday == 6) {
    art = 'СБ';
  } else if (date.weekday == 7) {
    art = 'ВС';
  }
  return (art);
}

int dayOfMonth(DateTime? date) {
  return (date!.day);
}
