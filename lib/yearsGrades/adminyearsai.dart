import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/admin/DEPgrades.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/yearsaddgrades/aiaddgradesL.dart';
import 'package:student/yearsaddgrades/aiaddgradesS.dart';
import 'package:student/yearsaddgrades/aiaddgradesT.dart';

import '../yearsaddgrades/aiaddgradesF.dart';

class adminyearsaigrades extends StatelessWidget {
  const adminyearsaigrades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(aiaddgradesF(),aiaddgradesS(),aiaddgradesT(),aiaddgradesL(),DEPgrades()),

    );
  }
}
