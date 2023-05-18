import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/admin/AIaddgrades.dart';
import 'package:student/admin/BIaddgrades.dart';
import 'package:student/mainPages/departD.dart';
import 'package:student/yearsGrades/adminyearsai.dart';
import 'package:student/yearsGrades/adminyearscs.dart';
import 'package:student/yearsGrades/adminyearsis.dart';

import '../yearsGrades/adminyearsbi.dart';

class DEPgrades extends StatelessWidget {
  const DEPgrades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: departementD(adminyearscsgrades(),adminyearsisgrades(),adminyearsaigrades(),adminyearsbigrades()),
    );
  }
}
