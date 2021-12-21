import 'package:flutter/material.dart';
import 'package:practice/page/dialog/reminderDialog.dart';

class dialog_Helper_Reminder {
  static exit(context) =>
      showDialog(context: context, builder: (context) => reminderDialog());
}
