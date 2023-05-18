import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/yearsD.dart';
import 'package:student/student/DEPstudentgrades.dart';
import 'package:student/yearviewgrades/aiviewgradesF.dart';
import 'package:student/yearviewgrades/aiviewgradesL.dart';
import 'package:student/yearviewgrades/aiviewgradesS.dart';
import 'package:student/yearviewgrades/aiviewgradesT.dart';

class studentyearsgradesai extends StatelessWidget {
  const studentyearsgradesai({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: yearsD(aiviewgradesF(),aiviewgradesS(),aiviewgradesT(),aiviewgradesL(),DEPstudentgrades()),
    );
  }
}
