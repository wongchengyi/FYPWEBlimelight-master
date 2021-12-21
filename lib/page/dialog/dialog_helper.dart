import 'package:flutter/material.dart';
import 'package:practice/page/components/components.dart';

class dialogHelper {
  static exit(context) =>
      showDialog(context: context, builder: (context) => badgeDialog());
}
