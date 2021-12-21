import 'package:flutter/material.dart';
import 'package:practice/page/dialog/viewReminder.dart';

class dialog_Helper_viewReminder {
  static exit(context) =>
      showDialog(context: context, builder: (context) => viewReminder());
}
