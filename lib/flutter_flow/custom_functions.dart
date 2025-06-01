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
    case 'medium':
      waterIntake += 500;
      break;
    case 'heavy':
      waterIntake += 1000;
      break;
    // 'light' or default has no addition
  }

  // Health condition adjustments
  if (diabetes == true) {
    waterIntake += 250;
  }
  if (pregnant == true) {
    waterIntake += 300;
  }
  if (breastFeeding == true) {
    waterIntake += 700;
  }

  return waterIntake; // in milliliters
}
