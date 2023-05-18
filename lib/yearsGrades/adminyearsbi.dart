import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';

import '../admin/DEPgrades.dart';
import '../yearsaddgrades/biaddgradesF.dart';
import '../yearsaddgrades/biaddgradesL.dart';
import '../yearsaddgrades/biaddgradesS.dart';
import '../yearsaddgrades/biaddgradesT.dart';

class adminyearsbigrades extends StatelessWidget {
  const adminyearsbigrades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: yearsD(biaddgradesF(),biaddgradesS(),biaddgradesT(),biaddgradesL(),DEPgrades()),
    );
  }
}
