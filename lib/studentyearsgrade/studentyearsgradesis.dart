import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/yearviewgrades/isviewgradesS.dart';

import '../student/DEPstudentgrades.dart';
import '../yearviewgrades/isviewgradesF.dart';
import '../yearviewgrades/isviewgradesT.dart';
import '../yearviewgrades/isviewgradesl.dart';

class studentyearsgradesis extends StatelessWidget {
  const studentyearsgradesis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(isviewgradesF(),isviewgradesS(),isviewgradesT(),isviewgradesL(),DEPstudentgrades()),
    );
  }
}
