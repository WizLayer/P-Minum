import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

double waterIntakeCalculator(
  double weight,
  String activity,
  bool diabetes,
  bool pregnant,
  bool breastFeeding,
) {
// Base water intake (35 mL per kg)
  double waterIntake = weight * 35;

  // Activity adjustment
  switch (activity) {
    case 'light':
      waterIntake += (30 / 30) * 350;
      break;
    case 'medium':
      waterIntake += (60 / 30) * 350;
      break;
    case 'heavy':
      waterIntake += (90 / 30) * 350;
      break;
  }

  // Health condition adjustments
  if (diabetes == true) {
    waterIntake += 500;
  }
  if (pregnant == true) {
    waterIntake += 300;
  }
  if (breastFeeding == true) {
    waterIntake += 700;
  }

  return waterIntake; // in milliliters
}

bool checkNewUser(DateTime? date) {
  return date != null;
}

bool dateCheck(DateTime lastOpenDate) {
  final now = DateTime.now();
  return lastOpenDate.year != now.year ||
      lastOpenDate.month != now.month ||
      lastOpenDate.day != now.day;
}

int calculateAge(DateTime dob) {
  final now = DateTime.now();
  int age = now.year - dob.year;
  if (now.month < dob.month || (now.month == dob.month && now.day < dob.day)) {
    age--;
  }
  return age;
}
