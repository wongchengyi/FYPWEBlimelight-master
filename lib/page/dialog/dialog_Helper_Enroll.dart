import 'package:flutter/material.dart';
import 'enrollDialog.dart';

class dialog_Helper_Enroll {
  static exit(context) =>
      showDialog(context: context, builder: (context) => enrollDialog());
}
