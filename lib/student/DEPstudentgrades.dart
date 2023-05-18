import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:student/mainPages/departD.dart';
import 'package:student/student/CSgrades.dart';
import 'package:student/studentyearsgrade/studentyearsgradesai.dart';
import 'package:student/studentyearsgrade/studentyearsgradesis.dart';

import '../studentyearsgrade/studentyearsgradesbi.dart';
import '../studentyearsgrade/studentyearsgradescs.dart';
import 'AIgrades.dart';
import 'BIgrades.dart';
import 'ISgrades.dart';

class DEPstudentgrades extends StatelessWidget {
  const DEPstudentgrades({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: departementD(studentyearsgradescs(),studentyearsgradesis(),studentyearsgradesai(),studentyearsgradescsbi(),),
    );
  }
}
