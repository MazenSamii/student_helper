import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';

import '../admin/DEPgrades.dart';
import '../yearsaddgrades/csaddgradesF.dart';
import '../yearsaddgrades/csaddgradesL.dart';
import '../yearsaddgrades/csaddgradesS.dart';
import '../yearsaddgrades/csaddgradesT.dart';

class adminyearscsgrades extends StatelessWidget {
  const adminyearscsgrades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(csaddgradesF(),csaddgradesS(),csaddgradesT(),csaddgradesL(),DEPgrades()),
    );
  }
}
