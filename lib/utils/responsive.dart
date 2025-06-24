import 'package:flutter/material.dart';

class Responsive {
  static bool isWeb(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600;
}
