import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';

import '../admin/DEPgrades.dart';
import '../yearsaddgrades/isaddgradesF.dart';
import '../yearsaddgrades/isaddgradesL.dart';
import '../yearsaddgrades/isaddgradesS.dart';
import '../yearsaddgrades/isaddgradesT.dart';

class adminyearsisgrades extends StatelessWidget {
  const adminyearsisgrades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(isaddgradesF(),isaddgradesS(),isaddgradesT(),isaddgradesL(),DEPgrades()),
    );
  }
}
